package org.kosta.controller;
// Factory 객체 (컨트롤러 객체 생성을 전담)
/*
 * 컨트롤러 구현체 생성을 전담하는 클래스
 * DispatcherServlet 과 Controller 계열의 구현체들과의 결합도를 낮춘다.
 */
public class HandlerMapping {
	// 싱글톤 패턴
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return instance;
	}
	public Controller create(String command) {
		Controller c=null;
		if(command.equals("find")) {
			c=new FindCustomerByIdController();
		}else if(command.equals("register")) {
			c=new RegisterController();
		}
		return c;
	}
}
