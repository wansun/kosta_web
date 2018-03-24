package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CompanyDAO;

public class DepartmentController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("department", CompanyDAO.getInstance().departmentList());
		return "register.jsp";
	}

}
