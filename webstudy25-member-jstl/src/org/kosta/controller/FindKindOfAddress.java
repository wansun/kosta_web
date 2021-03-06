package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.MemberDAO;

public class FindKindOfAddress implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("list", MemberDAO.getInstance().findKindOfAddressList());
		return "member/findMemberByAddress.jsp";
	}
}
