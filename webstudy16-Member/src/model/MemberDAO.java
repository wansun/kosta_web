package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	/// 싱글톤 패턴///////////////////
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return instance;
	}
	/////////////////////////////////
	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "scott", "tiger");
	}
	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}
	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public MemberDTO findMemberById(String id) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberDTO dto=null;
		try{
			con=getConnection();
			String sql="select password,name,address from member where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto=new MemberDTO(id, rs.getString(1), rs.getString(2), rs.getString(3));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return dto;
	}
	
	public MemberDTO login(MemberDTO dto) throws SQLException {
		MemberDTO resultDTO=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=getConnection();
			String sql="select name,address from member where id=? and password=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPass());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				resultDTO=new MemberDTO(dto.getId(),dto.getPass(),rs.getString(1),rs.getString(2));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return resultDTO;
	}
	
	public void updateMember(MemberDTO dto) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try {
			con=getConnection();
			String sql="update member set password=?,name=?,address=? where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getPass());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getId());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public void register(MemberDTO dto) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try {
			con=getConnection();
			String sql="insert into member(id,password,name,address) values(?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getAddress());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public boolean idcheck(String id) throws SQLException {
		boolean flag=false;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select count(*) from member where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()&&rs.getInt(1)>0)
				flag=true;
		}finally {
			closeAll(rs, pstmt, con);
		}
		return flag;	
	}	
}








