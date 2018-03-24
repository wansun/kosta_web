package model;

public class TestVO {
	public String getName() {
		return "방탄소년단";
	}
	
	//EL에서 접근 불가 !!
	public String findNick() {
		return "bts";
	}
	
	//EL에서 접근 가능 : get 과 is
	public boolean isPerson() {
		return false;
	}
	
	public int getMoney() {
		return 100;
	}
}
