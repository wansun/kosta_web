package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CompanyDAO {
	private CompanyDAO() {}
	private static CompanyDAO instance=new CompanyDAO();
	public static CompanyDAO getInstance() {
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
	
	public void employeeRegister(EmployeeVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=getConnection();
			//insert into employee(empno,ename,sal,deptno) values(1,'조민경',800,10);
			String sql="insert into employee(empno,ename,sal,deptno) values(employee_seq.nextval,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, vo.getEname());
			pstmt.setInt(2, vo.getSal());
			pstmt.setInt(3, vo.getDepartmentVO().getDeptno());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public ArrayList<DepartmentVO> departmentList() throws SQLException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<DepartmentVO> list=new ArrayList<DepartmentVO>();		
		try {
			con=getConnection();
			String sql="select deptno,dname from department";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(new DepartmentVO(rs.getInt(1), rs.getString(2)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
	public int findByDepartmentNumber(String dname) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int i=0;
		try {
			con=getConnection();
			String sql="select deptno from department where dname=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dname);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				i=rs.getInt(1);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}		
		return i;
	}
	
	public ArrayList<EmployeeVO> employeeListAll() throws SQLException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<EmployeeVO> list=new ArrayList<EmployeeVO>();
		try {
			con=getConnection();
			String sql="select e.empno, e.ename, e.sal, e.deptno, d.deptno, d.loc, d.tel "
					+ "from department d, employee e where d.deptno=e.deptno";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new EmployeeVO(rs.getInt(1), rs.getString(2), rs.getInt(3), new DepartmentVO(rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7))));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}
