package org.kosta.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class CompanyDAO {
	private static CompanyDAO dao=new CompanyDAO();
	private DataSource dataSource;
	private CompanyDAO(){
		dataSource=DataSourceManager.getInstance().getDataSource();
	}
	public static CompanyDAO getInstance(){		
		return dao;
	}
	public void closeAll(PreparedStatement pstmt, Connection con) {
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		if (con != null)
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	public void closeAll(ResultSet rs,PreparedStatement pstmt,Connection con){
		if(rs!=null)
			try {
				rs.close();
			} catch (SQLException e) {			
				e.printStackTrace();
			}
		closeAll(pstmt,con);
	}
	private Connection getConnection() throws SQLException{
		return dataSource.getConnection();
	}
public ArrayList<DepartmentVO> getAllDepartmentList() throws SQLException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<DepartmentVO> list=new ArrayList<DepartmentVO>();
		try{
			con=getConnection();
			String sql="select deptno,dname from department order by deptno asc";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				DepartmentVO dvo=new DepartmentVO();
				dvo.setDeptno(rs.getString(1));
				dvo.setDname(rs.getString(2));
				list.add(dvo);
			}
		}finally{
			closeAll(rs,pstmt,con);
		}
		return list;
	}
	public void registerEmployee(EmployeeVO vo) throws SQLException{
		Connection con=null;
		PreparedStatement pstmt=null;		
		try{
			con=getConnection();
			String sql="insert into employee(empno,ename,sal,deptno) values(employee_seq.nextval,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,vo.getEname());
			pstmt.setInt(2,vo.getSal());
			pstmt.setString(3,vo.getDepartmentVO().getDeptno());
			pstmt.executeUpdate();			
		}finally{
			closeAll(pstmt,con);
		}		
	}
	public ArrayList<EmployeeVO> getEmployeeList() throws SQLException{
		ArrayList<EmployeeVO> list=new ArrayList<EmployeeVO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append("SELECT e.empno,e.ename,e.sal,d.deptno,d.dname,d.loc,d.tel ");
			sql.append(" FROM employee e,department d ");
			sql.append("WHERE e.deptno=d.deptno  order by e.empno desc");
			pstmt=con.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				EmployeeVO emp=new EmployeeVO();
				emp.setEmpno(rs.getString(1));
				emp.setEname(rs.getString(2));
				emp.setSal(rs.getInt(3));
				DepartmentVO dept=new DepartmentVO();
				dept.setDeptno(rs.getString(4));
				dept.setDname(rs.getString(5));
				dept.setLoc(rs.getString(6));
				dept.setTel(rs.getString(7));
				emp.setDepartmentVO(dept);
				list.add(emp);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}




























