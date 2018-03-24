package org.kosta.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;
import org.kosta.model.ProductDTO;

public class FindByMakerController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String maker=request.getParameter("findMaker");
		System.out.println("** MAKER 검색 요청 **");
		ArrayList<ProductDTO> info3=ProductDAO.getInstance().findByMakerController(maker);
		if(info3==null) {
			return "search_fail.jsp";
		}else {
			request.setAttribute("info3", info3);
			return "maker_ok.jsp";
		}
	}
}
