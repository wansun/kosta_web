package org.kosta.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;
import org.kosta.model.ProductDTO;

public class FindByNameController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name=request.getParameter("findName");
		System.out.println("** NAME 검색 요청 **");
		ArrayList<ProductDTO> info2=ProductDAO.getInstance().findByNameController(name);
		if(info2==null) {
			return "search_fail.jsp";
		}else {
			request.setAttribute("info2", info2);
			return "name_ok.jsp";
		}
	}
}
