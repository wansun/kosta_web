package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ItemDAO;

public class ItemListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("itemList", ItemDAO.getInstance().itemList());
		request.setAttribute("url", "/home.jsp");
		return "/template/layout.jsp";
	}

}
