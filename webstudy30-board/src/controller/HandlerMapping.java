package controller;

public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping(){}
	public static HandlerMapping getInstance(){
		return instance;
	}
	public Controller create(String command){
		Controller c=null;
		if(command.equals("home")){
			c=new BoardListController();
		}else if(command.equals("login")) {
			c=new LoginController();
		}else if(command.equals("logout")) {
			c=new LogoutController();
		}else if(command.equals("detail")) {
			c=new BoardDetailController();
		}else if(command.equals("register")) {
			c=new RegisterController();
		}
		return c;
	}
}










