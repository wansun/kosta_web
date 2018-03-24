package model;

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
}
