package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

/**
 * Servlet implementation class DispatcherServlet
 */
@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
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
		if(command==null) {
			System.out.println("command"+command+" index로 이동시킨다..");
			response.sendRedirect("index.jsp");
		}else if(command.equals("find")) {
			String id=request.getParameter("userId");
			System.out.println("** 검색요청 **");
			//request에 따른 Model과 연동
			String info=MockDAO.getInstance().findInfoById(id);
			//Model 연동 결과에 따라 view를 선택하여 제어를 이동시켜 응답하도록 한다.
			if(info==null) {//정보를 공유해야 하므로 forward 방식으로 이동한다.
				request.getRequestDispatcher("find_fail.jsp").forward(request, response);
			}else {
				// Model과 연동한 결과, 즉 검색결과를 request에 공유한다
				request.setAttribute("info", info);
				request.getRequestDispatcher("find_ok.jsp").forward(request, response);
			}
		}else if(command.equals("register")) {
			System.out.println("** 정보를 등록 **");
			String id=request.getParameter("userId");
			String name=request.getParameter("userName");
			MockDAO.getInstance().registerInfo(id+" "+name);
			//register_result.jsp 에서 응답하도록 처리
			//forward 방식과 redirect 방식을 각각 처리해보고 비교
			//1. forward 방식
			String url="register_result.jsp";
			//request.getRequestDispatcher(url).forward(request, response);
			//2. redirect 방식
			response.sendRedirect(url);
		}
		
	}//method
}//class
