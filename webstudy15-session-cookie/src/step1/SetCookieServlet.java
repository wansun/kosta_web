package step1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetCookieServlet
 */
@WebServlet("/SetCookieServlet")
public class SetCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetCookieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>SetCookieServlet에서 쿠키를 클라이언트에 전달");
		Cookie cookie=new Cookie("nick","엔젤");
		//cookie는 tomcat8.5 이상에서는 공란을 허용하지 않아 -로 대체 해서 전송
		String nowTime=new Date().toString().replace(" ","-");
		Cookie timeCookie=new Cookie("time",nowTime);
		out.print("<br><br>쿠키에서 저장해서 전달한 시간정보 : "+nowTime);
		//nick 쿠키 유효시간을 설정한다
		cookie.setMaxAge(60);//60초 동안 유지되게 한다.
		timeCookie.setMaxAge(60);
		response.addCookie(cookie);//클라이언트에 쿠키를 전달
		response.addCookie(timeCookie);
		out.println("<br><br><a href=GetCookieServlet>GetCookieServlet에서 확인<br>");
		out.println("</h3>");
		out.close();
	}

}
