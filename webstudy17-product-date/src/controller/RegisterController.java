package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;
import model.ProductDTO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String name=request.getParameter("productName");
		String maker=request.getParameter("productMaker");
		int price=Integer.parseInt(request.getParameter("productPrice"));
		ProductDAO.getInstace().registerProduct(new ProductDTO(name, maker, price, null));
		return "redirect:dispatcher?command=productlist";
	}

}
