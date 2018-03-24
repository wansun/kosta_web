package step1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{
	private static final long serialVersionUID = -4596175650449887119L;
	//public HelloServlet(int i) {} // HTTP 500 에러 발생!!
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("HelloServlet doGet()");
		//응답시 전송할 컨텐트 정보를 할당
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<body bgcolor=yellow>");
		out.println("HelloServlet 방가 서블릿<br><br>");
		out.println("메뉴명은 : "+request.getParameter("menu"));
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
