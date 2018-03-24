package org.kosta.controller;
/**
 * 컨트롤러 객체 생성을 전담하는 클래스 
 * : simple factory 
 */
public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping(){}
	public static HandlerMapping getInstance(){
		return instance;
	}
	public Controller create(String command){
		Controller c=null;
		if(command.equals("registerProduct")){
			c=new RegisterProductController();
		}else if(command.equals("findProduct")){
			c=new FindProductController();
		}else if(command.equals("productList")){
			c=new ProductListController();
		}else if(command.equals("deleteProduct")){
			c=new DeleteProductController();
		}
		return c;
	}
}







