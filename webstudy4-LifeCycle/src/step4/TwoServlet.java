package step4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OneServlet
 */
@WebServlet("/TwoServlet")
public class TwoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TwoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		//서블릿컨텍스트에 접근해서 초기파라미터 값을 출력한다
		String id=this.getServletConfig().getServletContext().getInitParameter("adminId");
		out.println(this.getServletConfig().getServletName()+"<hr>");
		out.println("<h3>서블릿컨텍스트에 접근해 관리자 아이디 출력 : ");
		out.println(id+"</h3>");
		//ServletContext에 저장된 angel 정보 반환받아 출력
		out.println(this.getServletConfig().getServletContext().getAttribute("angel"));
		out.println("<a href='three-test.jsp'>jsp에서도 확인</a>");
		out.println("<hr>ServletContextListener에서 setting한 companyInfo 확인 : ");
		out.println(getServletConfig().getServletContext().getAttribute("companyInfo"));
		out.close();
	}

}
