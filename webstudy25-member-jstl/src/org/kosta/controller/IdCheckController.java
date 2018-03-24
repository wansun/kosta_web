package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.MemberDAO;

public class IdCheckController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");				
		boolean flag=MemberDAO.getInstance().idcheck(id);				
		if(flag)
			return "member/idcheck_fail.jsp";
		else
			return "member/idcheck_ok.jsp";	
	}

}






