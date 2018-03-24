package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardDTO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BoardDTO rdto=BoardDAO.getInstace().boardRegister();
		request.setAttribute("register", rdto);
		request.setAttribute("url", "/board/register.jsp");
		return "/template/layout.jsp";
	}

}
