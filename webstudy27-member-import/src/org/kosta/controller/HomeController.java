package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.MemberDAO;

public class HomeController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("totalCount",MemberDAO.getInstance().getAllMemberCount());
		//변경될 메인 영역의 jsp url을 전달한다.
		request.setAttribute("url", "/home.jsp");
		// import 처리 된 페이지로 이동시킨다.
		return "/template/layout.jsp";
	}

}
