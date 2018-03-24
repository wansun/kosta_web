package model;

public class DepartmentVO {
	private int deptno;
	private String dname;
	private String loc;
	private String tel;
	
	public DepartmentVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DepartmentVO(int deptno, String dname, String loc, String tel) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
		this.tel = tel;
	}
	
	

	public DepartmentVO(int deptno, String dname) {
		super();
		this.deptno = deptno;
		this.dname = dname;
	}

	public DepartmentVO(int deptno) {
		super();
		this.deptno = deptno;
	}

	/**
	 * @return the deptno
	 */
	public int getDeptno() {
		return deptno;
	}

	/**
	 * @param deptno the deptno to set
	 */
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	/**
	 * @return the dname
	 */
	public String getDname() {
		return dname;
	}

	/**
	 * @param dname the dname to set
	 */
	public void setDname(String dname) {
		this.dname = dname;
	}

	/**
	 * @return the loc
	 */
	public String getLoc() {
		return loc;
	}

	/**
	 * @param loc the loc to set
	 */
	public void setLoc(String loc) {
		this.loc = loc;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
