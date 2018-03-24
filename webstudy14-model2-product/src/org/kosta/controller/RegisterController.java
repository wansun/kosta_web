package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;
import org.kosta.model.ProductDTO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String maker=request.getParameter("maker");
		int price=Integer.parseInt(request.getParameter("price"));
		ProductDAO.getInstance().register(new ProductDTO(id, name, maker, price));
		return "redirect:register_ok.jsp";
	}

}
