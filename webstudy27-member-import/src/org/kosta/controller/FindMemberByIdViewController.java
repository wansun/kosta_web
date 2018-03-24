package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindMemberByIdViewController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//main 영역에 findMemberByIdView.jsp 가 나오도록 설정
		request.setAttribute("url", "/member/findMemberById.jsp");
		return "/template/layout.jsp";
	}

}
