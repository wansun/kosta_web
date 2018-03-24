package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;
import model.ProductDTO;

public class ProductListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ArrayList<ProductDTO> list=ProductDAO.getInstace().getProductList();
		if(list!=null) {
			request.setAttribute("productlist", list);
			return "product_list.jsp";
		}
		return null;
	}	
}
