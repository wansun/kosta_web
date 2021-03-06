package org.kosta.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.CompanyDAO;
import org.kosta.model.DepartmentVO;

public class RegisterEmployeeViewController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<DepartmentVO> deptList=CompanyDAO.getInstance().getAllDepartmentList();
		request.setAttribute("deptList", deptList);
		return "register_form.jsp";
	}
}
