package step6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionThree
 */
@WebServlet("/SessionThree")
public class SessionThree extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionThree() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>SessionThree에서 세션을 종료<br>");
		//기존 세션이 있으면 기존 세션 반환, 없으면 null 반환
		HttpSession session=request.getSession(false);
		if(session==null) {
			out.println("세션이 없습니다.");
		}else {
			session.invalidate();//세션을 사용하지 못하게 한다. 로그아웃
		}
		out.println("<br><a href=SessionOne>SessionOne으로 이동</a>");
		out.println("<br><a href=SessionTwo>SessionTwo에서 세션을 확인</a>");
		out.println("</h3>");
		out.close();
	}

}
