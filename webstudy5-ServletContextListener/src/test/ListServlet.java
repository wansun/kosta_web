package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		@SuppressWarnings("unchecked")
		ArrayList<MemberVO> list=(ArrayList<MemberVO>)getServletConfig().
		getServletContext().getAttribute("list");
		for(int i=0;i<list.size();i++)
			out.println(i+1+". "+list.get(i).getNick()+" "+list.get(i).getEmail()+"<br>");
		out.println("<hr><a href=index.html>home으로</a>");
		out.close();
	}

}
