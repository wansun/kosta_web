package controller;

public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return instance;
	}
	public Controller create(String command) {
		Controller c=null;
		if(command.equals("findById")) {
			c = new FindByIdController();
		}else if(command.equals("userList")) {
			c = new UserListController();
		}else if(command.equals("delete")) {
			c = new DeleteUserController();
		}
		return c; 
	}
}
