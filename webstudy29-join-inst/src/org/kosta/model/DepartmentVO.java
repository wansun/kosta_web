package org.kosta.model;
/*
 * create table department(
	deptno number primary key,
	dname varchar2(100) not null,
	loc  varchar2(100) not null,
	tel varchar2(100) not null
)
 */


public class DepartmentVO {
	private String deptno;
	private String dname;
	private String loc;
	private String tel;
	public DepartmentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DepartmentVO(String deptno, String dname, String loc, String tel) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
		this.tel = tel;
	}
	public String getDeptno() {
		return deptno;
	}
	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "DepartmentVO [deptno=" + deptno + ", dname=" + dname + ", loc=" + loc + ", tel=" + tel + "]";
	}
	
}
