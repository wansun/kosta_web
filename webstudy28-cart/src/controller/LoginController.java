package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("memberId");
		String password=request.getParameter("memberPassword");
		MemberDTO dto = 
				MemberDAO.getInstance().login(id,password);
		String url=null;
		if(dto!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("memberDTO", dto);
			//request.setAttribute("url", "/home.jsp");필요가 없다!!!!!!1
			url="index.jsp";
		}else {
			url="/item/login_fail.jsp";
		}
		return url;
	}

}
