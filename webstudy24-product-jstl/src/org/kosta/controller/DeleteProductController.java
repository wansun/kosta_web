package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;

public class DeleteProductController implements Controller {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ProductDAO.getInstance().deleteProduct(request.getParameter("id"));
		return "redirect:dispatcher?command=productList";
	}

}
