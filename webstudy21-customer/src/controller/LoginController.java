package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		
		String loginName= CustomerDAO.getInstance().login(id,password);
		if(loginName!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("loginName", loginName);
			return "redirect:index.jsp"; 
		}else {
			return "redirect:login_fail.jsp";
		}
	}
}
