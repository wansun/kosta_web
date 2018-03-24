package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CompanyDAO;

public class EmployeeListAllController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("list", CompanyDAO.getInstance().employeeListAll());
		return "list.jsp";
	}

}
