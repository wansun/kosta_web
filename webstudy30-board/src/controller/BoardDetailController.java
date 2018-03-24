package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardDTO;

public class BoardDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int bno=Integer.parseInt(request.getParameter("bno"));
		BoardDTO dto=BoardDAO.getInstace().boardDetail(bno);
		request.setAttribute("dto", dto);
		request.setAttribute("url", "/board/board_detail.jsp");
		return "/template/layout.jsp";
	}

}
