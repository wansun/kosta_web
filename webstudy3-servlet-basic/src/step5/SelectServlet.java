package step5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String menu=request.getParameter("menu");
		int count=Integer.parseInt(request.getParameter("count"));
		// client로부터 전달되는 모든 요청 데이터를 문자열 타ㅣㅂ으로
		// 전달되므로 정수형으로 변환힌 후 조건 검사를 한다.
		if(count>0&&count<11) {
			out.println(menu+" "+count+"인분 주문완료");
		}else {
			out.println(menu+"1~10인분 까지만 가능합니다");
		}
		out.close();
	}

}
