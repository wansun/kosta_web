package org.kosta.controller;

public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping(){}
	public static HandlerMapping getInstance(){
		return instance;
	}
	public Controller create(String command){
		Controller c=null;
		if(command.equals("RegisterEmployeeView")){
			c=new RegisterEmployeeViewController();
		}else if(command.equals("RegisterEmployee")){
			c=new RegisterEmployeeController();
		}else if(command.equals("EmployeeList")){
			c=new EmployeeListController();
		}
		return c;
	}
}










