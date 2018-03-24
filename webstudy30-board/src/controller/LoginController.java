package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		MemberDTO dto = MemberDAO.getInstance().loginMember(new MemberDTO(id, password, null));
		String url=null;
		if(dto!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("memberDTO", dto);
			request.setAttribute("url", "/template/home.jsp");
			url="/index.jsp";
		}else {
			url="/member/login_fail.jsp";
		}			
		return url;
	}
}
