package step2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindMemberByIdServlet
 */
@WebServlet("/FindMemberByIdServlet")
public class FindMemberByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindMemberByIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String memberId=request.getParameter("memberId");
		
		String url=getServletContext().getInitParameter("url");
		String id=getServletContext().getInitParameter("id");
		String pass=getServletContext().getInitParameter("pass");
		try {
			Connection con = DriverManager.getConnection(url, id, pass);
			String sql="select name,address from member where id=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, memberId);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				out.println(memberId+" 아이디에 대한 회원 정보<br>");
				out.println("이름 : "+rs.getString(1)+"<br>");
				out.println("주소 : "+rs.getString(2)+"<br>");
			}else {
				out.println(memberId+" 아이디에 대한 회원 정보가 없습니다.<br>");
			}
			rs.close();
			pstmt.close();
			con.close();
			out.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
