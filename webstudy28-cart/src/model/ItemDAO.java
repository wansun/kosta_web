package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ItemDAO {
	
	private ItemDAO() {}
	private static ItemDAO instance=new ItemDAO();
	public static ItemDAO getInstance() {
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
	
	public ArrayList<ItemDTO> itemList() throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<ItemDTO> list=new ArrayList<ItemDTO>();
		try {
			con=getConnection();
			String sql="select item_No, name, maker, price, detail from item order by item_No desc";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ItemDTO dto=new ItemDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
				list.add(dto);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}	
	
	public ItemDTO  itemDetail(String item_no) throws SQLException {
		ItemDTO resultDTO=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			String sql="select item_no,name,maker,price,detail from item where item_no=?";
			pstmt=con.prepareStatement(sql);
			System.out.println(item_no);
			pstmt.setInt(1, Integer.parseInt(item_no));
			rs=pstmt.executeQuery();
			if(rs.next()) {
				resultDTO=new ItemDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}		
		return resultDTO;
	}
	
	public void itemRegister(ItemDTO dto) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;		
		try {
			con=getConnection();
			String sql="insert into item(item_no,name,maker,price,detail) values(item_seq.nextval,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getMaker());
			pstmt.setInt(3, dto.getPrice());
			pstmt.setString(4, dto.getDetail());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
}
