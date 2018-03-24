package org.kosta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * 실제 컨트롤러 업무를 수행하는 구상클래스(구현체)들이
 * implements 하는 인터페이스
 * 다형성이 목적 (One Interface, Multiple Implements)
 * DispatcherServlet 은 실제 컨트롤러 구현객체의 메서드를 확인하지
 * 않아도 상위 Controller 인터페이스만 보고 사용할 수 있다.
 */
public interface Controller {
	public String execute(HttpServletRequest request,
			HttpServletResponse response)throws Exception;
	
}
