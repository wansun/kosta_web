package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

/**
 * handleRequest(request,response) 메서드를 분리시킨다
 * {
 * 		이동할 view정보=find(); //call
 * }
 * find(request,response)
 * register(request,response)
 */
@WebServlet("/DispatcherServlet2")
public class DispatcherServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handleRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		handleRequest(request,response);
	}
	
	protected void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request 분석
		String command=request.getParameter("command");
		String url="index.jsp";
		if(command==null) {
			System.out.println("command"+command+" index로 이동시킨다..");
			response.sendRedirect(url);
		}else if(command.equals("find")) {
			url=find(request, response);
		}else if(command.equals("register")) {
			url=register(request,response);
		}
		
		//view로 이동하여 응답하도록 한다
		if(url.trim().startsWith("redirect")) {
			response.sendRedirect(url.trim().substring(9));
		}else {
			request.getRequestDispatcher(url).forward(request, response);
		}
	}//method
	
	public String find(HttpServletRequest request,HttpServletResponse response) {
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
	}//find
	public String register(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("userId");
		String name=request.getParameter("userName");
		MockDAO.getInstance().registerInfo(id+" "+name);
		//register_result.jsp 로 redirect 방식으로 응답하게 한다.
		return "redirect:register_result.jsp";
	}
}//class
