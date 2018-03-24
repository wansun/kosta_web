package step3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RemoveCookieServlet
 */
@WebServlet("/RemoveCookieServlet")
public class RemoveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveCookieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>RemoveCookieServlet에서 클라이언트로부터 nick,time 쿠키정보 삭제<br><br>");
		Cookie cookies[]=request.getCookies();
		if(cookies!=null) {
			for(int i=0;i<cookies.length;i++) {
				if(cookies[i].getName().equals("nick")||
						cookies[i].getName().equals("time")) {
					out.println("nick cookie value:"+cookies[i].getValue()+"<br>");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}else {
			out.print("cookie 가 존재하지 않음 : "+cookies);
		}
		out.println("<br><br><a href=SetCookieServlet>GetCookieServlet에서 확인<br>");		
		out.println("</h3>");
		out.close();
	}

}
