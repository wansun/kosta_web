package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	private BoardDAO() {}
	private static BoardDAO instance=new BoardDAO();
	public static BoardDAO getInstace() {
		return instance;
	}
	public void closeAll(PreparedStatement pstmt,Connection con) throws SQLException{
		closeAll(null, pstmt,con);
	}
	public void closeAll(ResultSet rs,PreparedStatement pstmt,
			Connection con) throws SQLException{
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
	}
	public Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
	}
	
	public ArrayList<BoardDTO> boardList() throws SQLException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<BoardDTO> list=new ArrayList<BoardDTO>();
		try {
			con=getConnection();
			String sql="select b.bno, b.title, to_char(b.regdate,'yyyy.mm.dd'), b.bcount, m.name from board b, board_member m where b.id=m.id order by bno desc";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto=new BoardDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
				dto.getMemberDTO().setName(rs.getString(5));
				list.add(dto);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}		
		return list;
	}
	
	public  BoardDTO boardDetail(int bno) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		BoardDTO dto=null;
		try {
			con=getConnection();
			String sql="select b.title, to_char(b.regdate,'yyyy.mm.dd hh24:mi:ss'), b.bcount, b.text, m.name from board b, board_member m where b.id=m.id and b.bno=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs=pstmt.executeQuery();
			if(rs.next()) {
			
				//new BoardDTO(bno, title, regdate, bcount)
				dto = new BoardDTO(bno, rs.getString(1), rs.getString(4), rs.getString(2), rs.getInt(3), null, new MemberDTO(null, null, rs.getString(5)));
							
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return dto;
	}
	
	public BoardDTO boardRegister() throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		BoardDTO dto=null;
		try {
			con=getConnection();
			String sql="select b.title, b.text from board b, board_member m where b.id=m.id";
			pstmt=con.prepareStatement(sql);
			pstmt.executeQuery();
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto=new BoardDTO(rs.getString(1), rs.getString(2));
			}
		} finally {
			closeAll(rs, pstmt, con);
			}		
		return dto;
	}
}






