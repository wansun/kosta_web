package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.CustomerDAO;
import org.kosta.model.CustomerDTO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		CustomerDAO.getInstance().register(new CustomerDTO(id, name, address));
		return "redirect:register_result.jsp";
	}

}
