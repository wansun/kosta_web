package org.kosta.controller;

public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstace(){
		return instance;
	}
	
	public Controller create(String command) {
		Controller c=null;
		if(command.equals("register")) {
			c=new RegisterController();
		}else if(command.equals("find1")) {
			c=new FindByIdController();
		}else if(command.equals("find2")) {
			c=new FindByNameController();
		}else if(command.equals("find3")) {
			c=new FindByMakerController();
		}else if(command.equals("find4")) {
			c=new FindByPriceController();
		}else if(command.equals("info")) {
			c=new InfoByMakerController(); //제조사별 상품수 검색
		}
		return c;
	}
}
