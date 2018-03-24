package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.MemberDAO;
import org.kosta.model.MemberDTO;

public class FindMemberByIdController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		String id=request.getParameter("memberId");
		MemberDTO dto=MemberDAO.getInstance().findMemberById(id);
		if(dto==null)
			return "member/findMemberById_fail.jsp";
		else{
			request.setAttribute("memberDTO", dto);
			request.setAttribute("url", "/member/findMemberById_ok.jsp");
			return "/template/layout.jsp";
		}
	}
}
