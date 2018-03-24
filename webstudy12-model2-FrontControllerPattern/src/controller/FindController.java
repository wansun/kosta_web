package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;
/*
 * 검색 제어 로직을 정의하는 컨트롤러 구상 클래스
 */
public class FindController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("userId");
		System.out.println("** 검색요청 **");
		//request에 따른 Model과 연동
		String info=MockDAO.getInstance().findInfoById(id);
		//Model 연동 결과에 따라 view를 선택하여 제어를 이동시켜 응답하도록 한다.
		if(info==null) {//정보를 공유해야 하므로 forward 방식으로 이동한다.
			return "find_fail.jsp";
		}else {
			// Model과 연동한 결과, 즉 검색결과를 request에 공유한다
			request.setAttribute("info", info);
			return "find_ok.jsp";
		}
	}

}
