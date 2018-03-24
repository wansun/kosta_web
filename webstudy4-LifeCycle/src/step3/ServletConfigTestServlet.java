package step3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletConfigTestServlet extends HttpServlet{
	private static final long serialVersionUID = 8497112815888969882L;
	@Override
	public void init() throws ServletException {
		System.out.println(getServletName()+"init()..");
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String frameworkName=this.getServletConfig().getInitParameter("frameworkConfig");
		out.println("프레임워크 설정 정보 : "+frameworkName);
		out.close();
	}
}
