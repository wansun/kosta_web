package test;

public class MemberVO {
	private String nick;
	private String email;
	public MemberVO(String nick, String email) {
		super();
		this.nick = nick;
		this.email = email;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
