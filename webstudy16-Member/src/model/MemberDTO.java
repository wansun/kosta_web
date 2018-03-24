package model;

public class MemberDTO {
	private String id;
	private String pass;
	private String name;
	private String address;
	
	public MemberDTO() {}
	
	

	public MemberDTO(String pass, String name, String address) {
		super();
		this.pass = pass;
		this.name = name;
		this.address = address;
	}



	public MemberDTO(String id, String pass, String name, String address) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.address = address;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
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
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", name=" + name + ", address=" + address + "]";
	}
	
}
