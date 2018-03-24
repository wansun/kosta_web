package model;

public class StudyVO {
	private int id;
	private String password;
	private String name;
	private int age;
	private String address;
	
	
	public StudyVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StudyVO(int id, String password, String name, int age, String address) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.address = address;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "StudyVO [id=" + id + ", password=" + password + ", name=" + name + ", age=" + age + ", address="
				+ address + "]";
	}
	
	
}
