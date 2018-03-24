package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardDAO;
import model.PostVO;
import model.MemberVO;

public class WriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession(false);
		if(session==null||session.getAttribute("mvo")==null){
			return "redirect:index.jsp";
		}
		String title = request.getParameter("title");
		String content = request.getParameter("content");
				
		PostVO pvo=new PostVO();
		pvo.setTitle(title);
		pvo.setContent(content);
		pvo.setMemberVO((MemberVO)session.getAttribute("mvo"));		
	
		BoardDAO.getInstance().posting(pvo);
		String path="redirect:DispatcherServlet?command=showContentNotHit&no="+pvo.getNo();
		return path;
	}

}







