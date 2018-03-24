package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class CustomerDAO {
	private DataSource dataSource;
	private CustomerDAO() {
		dataSource=DataSourceManager.getInstance().getDataSource();
	}
	private static CustomerDAO instance=new CustomerDAO();
	public static CustomerDAO getInstance() {
		return instance;
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

	public int getCustomerCount() throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int resultCount=0;
		try {
			con=dataSource.getConnection();
			String sql="select count(*) from customer";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				resultCount = rs.getInt(1);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return resultCount;
	}

	public void registerCustomer(String id, String password, String name, String address, String birthday) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;		
		try {
			con=dataSource.getConnection();
			//insert into customer(id,password,name,address,birthday,regdate) values('b','2','류','강남','1967-03-01',sysdate);
			String sql="insert into customer(id,password,name,address,birthday,regdate) values(?,?,?,?,?,sysdate)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, birthday);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
		
	}

	public String login(String id, String password) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String loginName=null;
		try {
			con=dataSource.getConnection();
			String sql="select name from customer where id=? and password=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				loginName=rs.getString(1);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return loginName;
	}

	public CustomerVO getMyInfo(String name) throws SQLException {
		CustomerVO vo=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		try {
			con=dataSource.getConnection();
			String sql="select id,name,address,to_char(birthday,'yyyy-mm-dd'),trunc(months_between(sysdate,birthday))/12,to_char(regdate,'yyyy-dd-mm hh24:mi') from customer where name=?";
			pstmt=con.prepareStatement(sql);		
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo=new CustomerVO(rs.getString(1), null, rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}
}
