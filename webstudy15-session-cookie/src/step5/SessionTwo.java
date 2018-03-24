package step5;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionTwo
 */
@WebServlet("/SessionTwo")
public class SessionTwo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionTwo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>SessionTwo에서 세션에 정보를 확인<br>");
		//기존 세션이 있으면 기존 세션 반환, 없으면 null 반환
		HttpSession session=request.getSession(false);
		if(session==null) {
			out.println("세션이 없습니다.");
		}else {
			String name=(String)session.getAttribute("userName");
			Date time=(Date)session.getAttribute("time");
			out.println("세션으로부터 userName을 반환하여 출력 : "+name);
			out.println("<br>세션으로부터 time을 반환하여 출력 : "+time);
		}
		out.println("<br><a href=SessionOne>SessionOne으로 이동</a>");
		out.println("<br><a href=SessionThree>SessionThree에서 세션을 종료</a>");
		out.println("</h3>");
		out.close();
	}

}
