package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;
/* DBCP 를 이용해 컨넥션을 생성 소멸하는 것이 아니라
 * 빌려주고 반납받는 형식으로 사용한다
 */
public class ProductDAO {
	//// 싱글톤 패턴 /////
	private DataSource dataSource;
	private ProductDAO() {
		dataSource=DataSourceManager.getInstance().getDataSource();
	}
	private static ProductDAO instance=new ProductDAO();
	public static ProductDAO getInstace() {
		return instance;
	}
	///////////////////
	/*public Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "scott", "tiger");
	}*/
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
	public void registerProduct(ProductDTO dto) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;	
		//ProductDTO resultDTO=null;
		try {
			con=dataSource.getConnection();
			String sql="insert into model2_product(pno, name, maker, price, regdate) values(model2_product_seq.nextval,?,?,?,sysdate)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getMaker());
			pstmt.setInt(3, dto.getPrice());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	public ArrayList<ProductDTO> getProductList() throws SQLException {
		ArrayList<ProductDTO> list=new ArrayList<ProductDTO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=dataSource.getConnection();
			String sql="select pno,name,maker,price,to_char(regdate,'yyyy/mm/dd') from model2_product";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new ProductDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		
		return list;
	}
	public ProductDTO getProductInfo(int pno) throws SQLException {
		ProductDTO resultDTO=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=dataSource.getConnection();
			String sql="select pno,name,maker,price,to_char(regdate,'yyyy/mm/dd hh24:mi:ss') from model2_product where pno=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				resultDTO=new ProductDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return resultDTO;
	}
	public void removeProduct(int pno) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=dataSource.getConnection();
			String sql="delete model2_product where pno=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, pno);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}	
}
