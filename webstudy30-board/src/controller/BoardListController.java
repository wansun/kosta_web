package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;

public class BoardListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("home", BoardDAO.getInstace().boardList());
		request.setAttribute("url", "/template/home.jsp");
		return "/template/layout.jsp";
	}

}
