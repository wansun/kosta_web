package org.kosta.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.model.ProductDAO;

public class InfoByMakerController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String infoMk=request.getParameter("infoMaker");
		System.out.println("** 제조사별 상품수 정보 **");
		ArrayList<Integer> info5=ProductDAO.getInstance().infoByMakerController(infoMk);
		if(info5==null) {
			return "search_fail.jsp";
		}else {
			request.setAttribute("info5", info5);
			return "infoMaker_ok.jsp";
		}
	}
}
