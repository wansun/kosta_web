package controller;

/**
 * client의 요청을 처리할 컨트롤러 구현객체 생성을
 * 전담하는 factory 객체 
 * @author KOSTA
 *
 */
public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping(){}
	public static HandlerMapping getInstance(){
		return instance;
	}
	public Controller create(String command){
		Controller c=null;
		if(command.equals("register")){
			c=new RegisterController();
		}else if(command.equals("registerResult")) {
			c=new RegisterResultController();
		}else if(command.equals("department")) {
			c=new DepartmentController();
		}else if(command.equals("list")) {
			c=new EmployeeListAllController();
		}
		return c;
	}
}






















