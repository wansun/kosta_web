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
		if(command.equals("login")){
			c=new LoginController();
		}else if(command.equals("list")) {
			c=new ItemListController();
		}else if(command.equals("detail")) {
			c=new ItemDetailController();
		}else if(command.equals("logout")) {
			c=new LogoutController();
		}else if(command.equals("register")) {
			c=new ItemRegisterController();
		}else if(command.equals("registerResult")) {
			c=new ItemRegisterResultController();
		}
		return c;
	}
}






















