package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 */
@WebServlet("/DispatcherServlet4")
public class DispatcherServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handleRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		handleRequest(request,response);
	}
	
	protected void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//request 분석
		String command=request.getParameter("command");
		String url="index.jsp";		
		if(command==null) {
			System.out.println("command"+command+" index로 이동시킨다..");
			response.sendRedirect(url);
			return; //메서드 실행을 마친다.
		}		
		url=HandlerMapping.getInstance().create(command).execute(request, response);		 		
		//view로 이동하여 응답하도록 한다
		if(url.trim().startsWith("redirect")) {
			response.sendRedirect(url.trim().substring(9));
		}else {
			request.getRequestDispatcher(url).forward(request, response);
		}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("error_page.jsp");
		}
	}//method	
}//class
