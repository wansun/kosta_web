package controller;

public class HandlerMapping {
	private HandlerMapping() {}
	private static HandlerMapping instance=new HandlerMapping();
	public static HandlerMapping getInstance() {
		return instance;
	}
	
	public Controller create(String command) {
		Controller c=null;
		if(command.equals("getCustomerCount")) {
			c=new CustomerCountController();
		}else if(command.equals("registerCustomer")) {
			c=new RegisterCustomerController();
		}else if(command.equals("login")) {
			c=new LoginController();
		}else if(command.equals("myInfo")) {
			c=new MyInfoController();
		}else if(command.equals("logout")) {
			c=new LogoutController();
		}else if(command.equals("checkIdPassword")) {
			c=new CheckIdPasswordController();
		}
		return c;
	}
}
