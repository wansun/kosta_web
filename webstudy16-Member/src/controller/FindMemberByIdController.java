package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

public class FindMemberByIdController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("memberId");
		MemberDTO dto=MemberDAO.getInstance().findMemberById(id);
		if(dto==null)
			return "findMemberById_fail.jsp";
		else {
			request.setAttribute("memberDTO", dto);
			return "findMemberById_ok.jsp";
		}
			
	}

}
