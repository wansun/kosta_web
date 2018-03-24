package model;

public class EmployeeVO {
	private int empno;
	private String ename;
	private int sal;
	private DepartmentVO departmentVO;
	
	
	public EmployeeVO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public EmployeeVO(String ename, int sal, DepartmentVO departmentVO) {
		super();
		this.ename = ename;
		this.sal = sal;
		this.departmentVO = departmentVO;
	}


	public EmployeeVO(int empno, String ename, int sal, DepartmentVO departmentVO) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.departmentVO = departmentVO;
	}


	/**
	 * @return the empno
	 */
	public int getEmpno() {
		return empno;
	}


	/**
	 * @param empno the empno to set
	 */
	public void setEmpno(int empno) {
		this.empno = empno;
	}


	/**
	 * @return the ename
	 */
	public String getEname() {
		return ename;
	}


	/**
	 * @param ename the ename to set
	 */
	public void setEname(String ename) {
		this.ename = ename;
	}


	/**
	 * @return the sal
	 */
	public int getSal() {
		return sal;
	}


	/**
	 * @param sal the sal to set
	 */
	public void setSal(int sal) {
		this.sal = sal;
	}


	/**
	 * @return the departmentVO
	 */
	public DepartmentVO getDepartmentVO() {
		return departmentVO;
	}


	/**
	 * @param departmentVO the departmentVO to set
	 */
	public void setDepartmentVO(DepartmentVO departmentVO) {
		this.departmentVO = departmentVO;
	}
	
}
