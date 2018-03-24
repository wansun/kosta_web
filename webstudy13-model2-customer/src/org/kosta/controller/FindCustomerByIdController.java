package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.CustomerDAO;
import org.kosta.model.CustomerDTO;

public class FindCustomerByIdController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("userId");
		System.out.println("검색요청");
		CustomerDTO info=CustomerDAO.getInstance().findCustomerById(id);
		if(info==null) {
			return "findCustomerById_fail.jsp";
		}else {
			request.setAttribute("info", info);
			return "findCustomerById_ok.jsp";
		}
	}
}
