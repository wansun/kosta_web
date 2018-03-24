package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StudyDAO {
	private static StudyDAO instance = new StudyDAO();
	private StudyDAO() {}
	public static StudyDAO getInstance() {
		return instance;
	}
	public Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
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
	public StudyVO findById(int id) throws SQLException {
		StudyVO vo=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select id,password,name,age,address from study where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo=new StudyVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}
	public ArrayList<StudyVO> userList() throws SQLException {
		ArrayList<StudyVO> list=new ArrayList<StudyVO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select id,name,age,address from study";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new StudyVO(rs.getInt(1), null, rs.getString(2), rs.getInt(3), rs.getString(4)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
	public void deleteUser(int id) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try{
			con=getConnection();
			String sql="delete from study where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();			
		}finally {
			closeAll(pstmt, con);
		}
	}
}