package controller;

public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return instance;
	}
	public Controller create(String command) {
		Controller c=null;
		if(command.equals("findMemberById")) {
			c=new FindMemberByIdController();
		}else if(command.equals("login")) {
			c=new LoginController();
		}else if(command.equals("logout")) {
			c=new LogoutController();
		}else if(command.equals("update")) {
			c=new UpdateController();
		}else if(command.equals("register")) {
			c=new RegisterController();
		}else if(command.equals("idcheck")) {
			c=new IdCheckController();
		}
		return c;
	}
}
