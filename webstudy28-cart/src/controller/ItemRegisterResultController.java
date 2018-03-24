package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ItemDAO;
import model.ItemDTO;

public class ItemRegisterResultController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name=request.getParameter("name");
		String maker=request.getParameter("maker");
		int price=Integer.parseInt(request.getParameter("price"));
		String detail=request.getParameter("detail");
		ItemDTO registerItem=new ItemDTO(name, maker, price, detail);
		ItemDAO.getInstance().itemRegister(registerItem);
		return "redirect:item/item_register_result.jsp";
		//이거 cart return "/item/item_register.jsp";
	}
}
