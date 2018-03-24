package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ItemDAO;
import model.ItemDTO;

public class ItemDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String item = request.getParameter("item_no");
		ItemDTO detailItem = ItemDAO.getInstance().itemDetail(item);
		request.setAttribute("itemDetail", detailItem);
		request.setAttribute("url", "/item/detail.jsp");
		return "/template/layout.jsp";
	}

}
