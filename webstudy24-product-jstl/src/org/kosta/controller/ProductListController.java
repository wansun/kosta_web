package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;

public class ProductListController implements Controller {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setAttribute("list",ProductDAO.getInstance().getAllProductList());
		return "product/product_list.jsp";
	}
}
