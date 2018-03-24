package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudyDAO;

public class DeleteUserController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int id=Integer.parseInt(request.getParameter("id"));
		StudyDAO.getInstance().deleteUser(id);
		return "index.jsp";
	}

}
