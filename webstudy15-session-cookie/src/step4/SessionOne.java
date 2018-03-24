package step4;

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
 * Servlet implementation class SessionOne
 */
@WebServlet("/SessionOne")
public class SessionOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionOne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>SessionOne에서 세션에 정보를 공유");
		//getSession(): 세션 없으면 새로 생성, 있으면 기존 세션 리턴
		HttpSession session=request.getSession();
		session.setAttribute("userName", "조보아");
		session.setAttribute("time", new Date());
		
		out.println("<br><a href=SessionTwo>SessionTwo에서 확인</a>");
		out.println("</h3>");
		out.close();
	}

}
