package controller;
/*
 * 컨트롤러 구현체 생성을 전담하는
 * 클래스 (Factory) -> DispatcherServlet 과 Controller 구현체들과의
 * 결합도를 낮추는 역할을 한다. ex) 이 클래스는 회사에서 인사팀이라 생각하면됨
 * 
 * ver3
 *      사장                                     직원
 *    DispatcherServlet      Controller
 *    
 * ver4   
 * ->   사장                                      인사팀                            직원
 *    DispatcherServlet      HandlerMapping       Controller 
 */
public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return instance;
	}
	public Controller create(String command) {
		Controller controller=null;
		if(command.equals("find")) {
			controller=new FindController();
		}else if(command.equals("register")) {
			controller=new RegisterController();
		}else if(command.equals("list")) {
			controller=new ListController();
		}
		return controller;
	}
}
