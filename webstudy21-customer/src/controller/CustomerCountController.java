package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDAO;

public class CustomerCountController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int countCustomer=CustomerDAO.getInstance().getCustomerCount();
		request.setAttribute("count_Customer", countCustomer);
		
		
		return "cutomerCount.jsp";
	}

}
