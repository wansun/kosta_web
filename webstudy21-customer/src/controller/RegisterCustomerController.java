package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDAO;

public class RegisterCustomerController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String birthday=request.getParameter("birthday");
		CustomerDAO.getInstance().registerCustomer(id,password,name,address,birthday);
		return "redirect:register_ok.jsp";
	}

}
