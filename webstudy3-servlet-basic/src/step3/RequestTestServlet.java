package step3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestTestServlet
 */
@WebServlet("/requestTest")
public class RequestTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		//String id=request.getParameter("id");
		//out.println("아이디"+id); //요고와 같음out.println("아이디 : "+request.getParameter("id"));
		String name=request.getParameter("name");
		out.println("RequestTestServlet doGet() 으로 응답<br>");
		out.println("아이디 : "+request.getParameter("id"));
		out.println("이름 : "+name);
		out.close();
	}

}
