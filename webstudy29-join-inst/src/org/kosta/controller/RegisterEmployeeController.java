package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.CompanyDAO;
import org.kosta.model.DepartmentVO;
import org.kosta.model.EmployeeVO;

public class RegisterEmployeeController  implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String ename=request.getParameter("ename");
		int sal=Integer.parseInt(request.getParameter("sal"));
		String deptno=request.getParameter("deptno");
		EmployeeVO vo=new EmployeeVO();
		vo.setEname(ename);
		vo.setSal(sal);
		DepartmentVO dvo=new DepartmentVO();
		dvo.setDeptno(deptno);
		vo.setDepartmentVO(dvo);
		CompanyDAO.getInstance().registerEmployee(vo);
		return "redirect:register_result.jsp";
	}
}