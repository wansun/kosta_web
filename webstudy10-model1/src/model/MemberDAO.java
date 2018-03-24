package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//Singleton Design Pattern 적용
//시스템 상에서 한번 객체를 생성해 공유해서 사용하도록 처리
public class MemberDAO {
	//singleton/////////////////////////////////
	private static MemberDAO instance=new MemberDAO();
	private MemberDAO() {
		
	}
	public static MemberDAO getInstance() {
		return instance;
	}
	//////////////////////////////////////////////
	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", 
				"scott", "tiger");
	}

	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)	
			con.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
	}
	
	public int getMemberCount() throws SQLException {
		int count=0;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select count(*) from member";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
		}finally {
			closeAll(rs,pstmt,con);
		}
		return count;
	}
	
	public ArrayList<MemberVO> findMemberListByAddress(String address) throws SQLException {
		ArrayList<MemberVO> list=new ArrayList<MemberVO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select id,name from member where address=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, address);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new MemberVO(rs.getString(1),null,rs.getString(2),address));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
}









