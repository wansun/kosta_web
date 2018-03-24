package org.kosta.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDAO {
	/// 싱글톤 패턴/////
	private static CustomerDAO instance=new CustomerDAO();
	private CustomerDAO() {}
	public static CustomerDAO getInstance() {
		return instance;
	}
	/////////////
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
	
	public CustomerDTO findCustomerById(String id) throws SQLException {
		CustomerDTO dto=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select name,address from customer where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto=new CustomerDTO(id, rs.getString(1),rs.getString(2));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return dto;
	}
	
	public void register(CustomerDTO customerDTO) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=getConnection();
			String sql="insert into customer(id,name,address) values(?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, customerDTO.getId());
			pstmt.setString(2, customerDTO.getName());
			pstmt.setString(3, customerDTO.getAddress());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
}
