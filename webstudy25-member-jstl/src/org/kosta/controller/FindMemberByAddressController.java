package org.kosta.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.MemberDAO;
import org.kosta.model.MemberDTO;

public class FindMemberByAddressController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address=request.getParameter("address");
		ArrayList<MemberDTO> list
		=MemberDAO.getInstance().findMemberListByAddress(address);	
		request.setAttribute("list", list);
		return "member/findMemberByAddress_result.jsp";
	}
}
