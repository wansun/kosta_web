package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;
import model.CustomerVO;

public class MyInfoController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession(false);
		String name=(String)session.getAttribute("loginName");
		if(session==null || name==null) {
				return "myInfo_error.jsp";
		}else {
			CustomerVO vo=CustomerDAO.getInstance().getMyInfo(name);
			session.setAttribute("myInfo", vo);
			return "mypage.jsp";
		}
	}
}
