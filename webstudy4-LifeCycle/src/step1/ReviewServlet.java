package step1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 서블릿 : 웹어플리케이션을 위한 자바 기술
 * Servlet implementation class ReviewServlet
 */
//아래 어노테이션은 클라이언트가 요청시 명시하는 url
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * HttpServletRequest : 클라이언트 요청 정보를 저장하는 객체의 인터페이스 타입 (입력)
	 * HttpServletResponse : 클라이언트에게 응답하기 위한 정보를 저장하는 객체의 타입 (출력)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("ReviewServlet");
		String id=request.getParameter("id"); //요게 핵심
		out.println(id+"</body>");
		out.println("</html>");
		
		out.close();
	}
	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); //post 방식 한글처리
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("ReviewServlet");
		String id=request.getParameter("userId"); //요게 핵심
		String nick=request.getParameter("userNick");
		out.println(id+" "+nick+"</body>");
		out.println("</html>");
		
		out.close();
	}

}
