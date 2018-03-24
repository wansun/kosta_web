package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;
import org.kosta.model.ProductDTO;

public class FindByIdController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("findId");
		System.out.println("** ID 검색 요청 **");
		ProductDTO info1=ProductDAO.getInstance().findByIdController(id);
		if(info1==null) {
			return "search_fail.jsp";
		}else {
			request.setAttribute("info1", info1);
			return "id_ok.jsp";
		}		
	}
}
