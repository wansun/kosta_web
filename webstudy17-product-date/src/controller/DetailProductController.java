package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;
import model.ProductDTO;

public class DetailProductController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pno=Integer.parseInt(request.getParameter("productDetailPno"));
		ProductDTO dto=ProductDAO.getInstace().getProductInfo(pno);
		request.setAttribute("dto", dto);
		return "detail_product.jsp";
	}

}
