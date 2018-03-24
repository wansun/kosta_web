package model;

public class CustomerVO {
	private String id;
	private String password;
	private String name;
	private String address;
	private String birthday;
	private int age;
	private String regdate;
	
	public CustomerVO(String id, String password, String name, String address, String birthday, String regdate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.address = address;
		this.birthday = birthday;
		this.regdate = regdate;
	}

	public CustomerVO(String id, String password, String name, String address, String birthday, int age,
			String regdate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.address = address;
		this.birthday = birthday;
		this.age = age;
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
