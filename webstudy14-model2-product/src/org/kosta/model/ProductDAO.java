package org.kosta.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	/// 싱글톤 패턴///////////////////
	private static ProductDAO instance=new ProductDAO();
	private ProductDAO() {}
	public static ProductDAO getInstance() {
		return instance;
	}
	/////////////////////////////////
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
	public void register(ProductDTO productDTO) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=getConnection();
			String sql="insert into mvc_product(id,name,maker,price) values(mvc_product_seq.nextval,?,?,?)";
			pstmt=con.prepareStatement(sql);			
			pstmt.setString(1, productDTO.getName());
			pstmt.setString(2, productDTO.getMaker());
			pstmt.setInt(3, productDTO.getPrice());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	public ProductDTO findByIdController(String id) throws SQLException {
		ProductDTO dto=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select name,maker,price from mvc_product where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto=new ProductDTO(id, rs.getString(1),rs.getString(2),rs.getInt(3));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return dto;
	}
	public ArrayList<ProductDTO> findByNameController(String name) throws SQLException {
		ArrayList<ProductDTO> info2=new ArrayList<ProductDTO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select id,maker,price from mvc_product where name=? order by id desc";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				info2.add(new ProductDTO(rs.getString(1), name, rs.getString(2), rs.getInt(3)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return info2;
	}
	public ArrayList<ProductDTO> findByMakerController(String maker) throws SQLException {
		ArrayList<ProductDTO> info3=new ArrayList<ProductDTO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select id,name,price from mvc_product where maker=? order by id desc";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, maker);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				info3.add(new ProductDTO(rs.getString(1), rs.getString(2), maker, rs.getInt(3)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		
		return info3;
	}
	public ArrayList<ProductDTO> findByPriceController(String min, String max) throws SQLException {
		ArrayList<ProductDTO> info4=new ArrayList<ProductDTO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select id,name,maker,price from mvc_product where price>=? and price<=? order by id desc";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, min);
			pstmt.setString(2, max);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				info4.add(new ProductDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return info4;
	}
	public ArrayList<Integer> infoByMakerController(String infoMk) throws SQLException {
		ArrayList<Integer> info5=new ArrayList<Integer>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select count(*) from mvc_product where maker=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, infoMk);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				info5.add(rs.getInt(1));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return info5;
	}
}
