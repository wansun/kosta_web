package org.kosta.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

/*		DBCP 를 이용해 컨넥션을 생성 소멸하는 것이 아니라
 * 		빌려주고 반납받는 형식으로 사용한다 
 */
public class ProductDAO {
	private static ProductDAO instance=new ProductDAO();
	private DataSource dataSource;
	private ProductDAO(){
		dataSource=DataSourceManager.getInstance().getDataSource();
	}
	public static ProductDAO getInstance() throws ClassNotFoundException{
		return instance;
	}
	/*public Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
	}*/
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
	
	public void registerProduct(ProductDTO dto) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con=dataSource.getConnection();
			String 	sql="insert into model2_product(pno,name,maker,price,regdate) values(model2_product_seq.nextval,?,?,?,sysdate)";			
			pstmt=con.prepareStatement(sql);			
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getMaker());
			pstmt.setInt(3, dto.getPrice());
			pstmt.executeUpdate();
		}finally{
			closeAll(rs,pstmt, con);
		}
	}
	public ArrayList<ProductDTO> getAllProductList() throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<ProductDTO> list=new ArrayList<ProductDTO>();
		try{
			con=dataSource.getConnection();
			String sql
			="select pno,name,to_char(regdate,'YYYY/MM/DD') from model2_product order by pno desc";					
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				ProductDTO dto=new ProductDTO(rs.getString(1),rs.getString(2),rs.getString(3));
				list.add(dto);
			}
		}finally{
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	public ProductDTO findProductById(String pno) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ProductDTO dto=null;
		try{
			con=dataSource.getConnection();
			String sql="select name,maker,price,to_char(regdate,'YYYY/MM/DD HH24:MI:SS') from model2_product where pno=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,pno);
			rs=pstmt.executeQuery();
			if(rs.next())
				dto=new ProductDTO(pno,rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4));
		}finally{
			closeAll(rs, pstmt, con);
		}
		return dto;
	}
	

	public void deleteProduct(String pno) throws SQLException {		
		Connection con=null;
		PreparedStatement pstmt=null;
		try{
			con=dataSource.getConnection();
			String sql="delete from model2_product where pno=?";
			pstmt=con.prepareStatement(sql);			
			pstmt.setString(1,pno);			
			pstmt.executeUpdate();			
		}finally{
			closeAll(pstmt,con);
		}
	}
}











