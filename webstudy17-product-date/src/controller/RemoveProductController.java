package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;

public class RemoveProductController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pno=Integer.parseInt( request.getParameter("removePno"));
		
		ProductDAO.getInstace().removeProduct(pno);
		
		return "redirect:dispatcher?command=productlist";
	}

}
