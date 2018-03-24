package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudyDAO;
import model.StudyVO;

public class FindByIdController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		int id=Integer.parseInt((String)request.getParameter("id"));
		StudyVO vo=StudyDAO.getInstance().findById(id);
		request.setAttribute("findInfo",vo);
		return "findById.jsp";
	}

}
