package org.kosta.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;
import org.kosta.model.ProductDTO;

public class FindByPriceController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String min=request.getParameter("minPrice");
		String max=request.getParameter("maxPrice");
		System.out.println("** 가격 조회 요청 **");
		ArrayList<ProductDTO> info4=ProductDAO.getInstance().findByPriceController(min,max);
		if(info4==null) {
			return "search_fail.jsp";
		}else {
			request.setAttribute("info4",info4);
			return "price_ok.jsp";
		}
	}
}
