package model;

public class PersonVO {
	private String name;
	private int age;
	public PersonVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PersonVO(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "PersonVO [name=" + name + ", age=" + age + "]";
	}
	
}
