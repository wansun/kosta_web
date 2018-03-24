package test;

public class TestUnit {
	public static void main(String[] args) {
		String url1="redirect:find_ok.jsp";
		url1=url1.substring(9);
		System.out.println(url1);//find_ok.jsp 만 출력
		String url2="redirect:find_fail.jsp";
		url2=url2.trim().substring(9);
		System.out.println(url2);//find_fail.jsp 만 출력
	}
}
