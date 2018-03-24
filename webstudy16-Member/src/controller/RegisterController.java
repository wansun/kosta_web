package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("registerId");
		String pass=request.getParameter("registerPass");
		String name=request.getParameter("registerName");
		String address=request.getParameter("registerAddress");
		MemberDAO.getInstance().register(new MemberDTO(id, pass, name, address));
		return "redirect:register_ok.jsp";
	}

}
