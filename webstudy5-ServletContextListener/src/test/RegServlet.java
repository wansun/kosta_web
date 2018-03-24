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
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		String nick=request.getParameter("nick");
		String email=request.getParameter("email");
		out.println("입력된 닉네임 : "+nick+"<br>");
		out.println("입력된 이메일 : "+email+"<hr>");
		@SuppressWarnings("unchecked")//리스트에 입력값 받는 작업임.
		ArrayList<MemberVO> list=(ArrayList<MemberVO>)getServletConfig().
		getServletContext().getAttribute("list");
		list.add(new MemberVO(nick, email));
		out.println("<h3>"+nick+" 님 명단에 등록"+"<hr>");
		out.println("<a href='ListServlet'>등록명단 보기</a>");
		//this.getServletConfig().getServletContext().setAttribute(nick, email); 이거 필요없음		
		out.close();
	}

}
