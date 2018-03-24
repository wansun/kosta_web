package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CompanyDAO;
import model.DepartmentVO;
import model.EmployeeVO;

public class RegisterResultController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String deptname=request.getParameter("deptno");
		
		String ename=request.getParameter("ename");
		int sal=Integer.parseInt(request.getParameter("sal"));
		int i= CompanyDAO.getInstance().findByDepartmentNumber(deptname);
		EmployeeVO vo=new EmployeeVO(0,ename,sal,new DepartmentVO(i));
		CompanyDAO.getInstance().employeeRegister(vo);
		//여기서 추가를 하고 새로고침이 안되게 리다이렉트
		return "redirect:register_result.jsp";
	}

}
