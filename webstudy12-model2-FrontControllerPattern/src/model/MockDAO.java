package model;

import java.util.ArrayList;

public class MockDAO {
	private static MockDAO instance=new MockDAO();
	private MockDAO() {}
	public static MockDAO getInstance() {
		return instance;
	}
	public String findInfoById(String id) {
		if(id.equals("java"))
			return "유바롬 서현";
		else
			return null;
	}
	public void registerInfo(String info) {
		System.out.println("database table 에 정보를 insert !!!"+info);
	}
	public ArrayList<String> getProductList(){
		ArrayList<String> list=new ArrayList<String>();
		list.add("소나타");
		list.add("족발");
		list.add("소주");
		return list;
	}
}
