package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("userId");
		String name=request.getParameter("userName");
		MockDAO.getInstance().registerInfo(id+" "+name);
		//register_result.jsp 로 redirect 방식으로 응답하게 한다.
		return "redirect:register_result.jsp";
	}

}
