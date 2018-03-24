package org.kosta.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;
import org.kosta.model.ProductDTO;

public class FindProductController implements Controller {
	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String pno=request.getParameter("pno");			
		ProductDTO dto=ProductDAO.getInstance().findProductById(pno);
		request.setAttribute("dto", dto);
		return "product/detail_product.jsp";
	}
}






