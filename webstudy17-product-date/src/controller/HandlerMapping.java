package controller;

public class HandlerMapping {
	//////////////////////////// 싱   글   톤    패   턴 ////////////////////////////////////
	private HandlerMapping() {}
	private static HandlerMapping instance=new HandlerMapping();
	public static HandlerMapping getInstance() {
		return instance;
	}
	///////////////////////////////////////////////////////////////////////////////////
	public Controller create(String command) {
		Controller c=null;
		if(command.equals("registerProduct")) {
			c=new RegisterController();
		}else if(command.equals("productlist")) {
			c=new ProductListController();
		}else if(command.equals("detailproduct")) {
			c=new DetailProductController();
		}else if(command.equals("removeProduct")) {
			c=new RemoveProductController();
		}
		return c;
	}
}
