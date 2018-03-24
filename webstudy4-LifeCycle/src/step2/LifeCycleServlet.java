package step2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleServlet
 */
@WebServlet("/LifeCycleServlet")
public class LifeCycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleServlet() {
        super();
        System.out.println("LifeCycleServlet 객체생성");
    }
    @Override
    public void init() throws ServletException {
    	System.out.println("LifeCycleServlet init() 실행");
    }
    private int count;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;chatset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>");
		out.println(++count);
		out.println("</h3>");
		out.close();
	}
	@Override
	public void destroy() {
		System.out.println("LifeCycleServlet destroy() 실행");
	}
}
