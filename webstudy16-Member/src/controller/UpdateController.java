package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

public class UpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession(false);
		//로그인하지 않은 사용자는 index로 보낸다
		if(session==null||session.getAttribute("memberDTO")==null) {
			return "redirect:index.jsp";
		}else {
			String id=request.getParameter("updateId");
			String pass=request.getParameter("updatePass");
			String name=request.getParameter("updateName");
			String address=request.getParameter("updateAddress");
			MemberDTO dto=new MemberDTO(id, pass, name, address);
			MemberDAO.getInstance().updateMember(dto);
			session.setAttribute("memberDTO",dto);
		}
		return "redirect:update_result.jsp";
	}

}
