package test.singleton;
// 시스템 상에서 WareHouse는 하나만 생성되어
// 여러곳에서 사용되도록 Singleton Pattern을 적용

class WareHouse{
	private static WareHouse instance=new WareHouse();
	private String info="회사정보";
	//private 생성자로 외부에서 객체 생성하는 것을 막는다.
	private WareHouse() {
		System.out.println("WareHouse 객체 생성");
	}
	//한번 생성된 객체를 외부에 공유하기 위한 메서드
	public static WareHouse getInstance() {
		return instance;
	}
	
	//업무 메서드
	public String getInfo() {
		return info;
	}
}
public class TestSingletonDesignPattern {
	public static void main(String[] args) {
		//생성자 접근 제어자가 private 이므로 error
		//즉 객체 생성 불가
		//WareHouse wh=new WareHouse();
		System.out.println(WareHouse.getInstance().getInfo());
		//getInstance()를 여러번 호출해도 한번 생성된 객체의 주소값이 반환된다.
		System.out.println(WareHouse.getInstance());
		System.out.println(WareHouse.getInstance());
		System.out.println(WareHouse.getInstance());
	}
}
