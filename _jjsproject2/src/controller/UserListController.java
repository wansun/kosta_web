package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudyDAO;
import model.StudyVO;

public class UserListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<StudyVO> list=StudyDAO.getInstance().userList();
		request.setAttribute("List", list);
		return "userList.jsp";
	}

}
