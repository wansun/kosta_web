package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CafeViewController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//로그인하지 않은 사용자는 첫화면으로 보낸다.
		HttpSession session=request.getSession(false);
		if(session==null || session.getAttribute("memberDTO")==null)
			return "redirect:index.jsp";
		request.setAttribute("url", "/member/cafe.jsp");
		return "/template/layout.jsp";
	}

}
