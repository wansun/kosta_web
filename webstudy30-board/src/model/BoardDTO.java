package model;

public class BoardDTO {
	private int bno;
	private String title;
	private String text;
	private String regdate;
	private int bcount;
	private String id;
	private MemberDTO memberDTO;
	
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public BoardDTO(String title, String text) {
		super();
		this.title = title;
		this.text = text;
	}

	public BoardDTO(String title, String text, String regdate, int bcount) {
		super();
		this.title = title;
		this.text = text;
		this.regdate = regdate;
		this.bcount = bcount;
	}



	public BoardDTO(int bno, String title, String text, String regdate, int bcount) {
		super();
		this.bno = bno;
		this.title = title;
		this.text = text;
		this.regdate = regdate;
		this.bcount = bcount;
	}



	public BoardDTO(int bno, String title, String regdate, int bcount) {
		super();
		this.bno = bno;
		this.title = title;
		this.regdate = regdate;
		this.bcount = bcount;
	}



	public BoardDTO(int bno, String title, String regdate, int bcount, MemberDTO memberDTO) {
		super();
		this.bno = bno;
		this.title = title;
		this.regdate = regdate;
		this.bcount = bcount;
		this.memberDTO = memberDTO;
	}



	public BoardDTO(int bno, String title, String text, String regdate, int bcount, String id, MemberDTO memberDTO) {
		super();
		this.bno = bno;
		this.title = title;
		this.text = text;
		this.regdate = regdate;
		this.bcount = bcount;
		this.id = id;
		this.memberDTO = memberDTO;
	}

	public BoardDTO(String title, String text, String regdate, int bcount, String id, MemberDTO memberDTO) {
		super();
		this.title = title;
		this.text = text;
		this.regdate = regdate;
		this.bcount = bcount;
		this.id = id;
		this.memberDTO = memberDTO;
	}

	/**
	 * @return the bno
	 */
	public int getBno() {
		return bno;
	}

	/**
	 * @param bno the bno to set
	 */
	public void setBno(int bno) {
		this.bno = bno;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}

	/**
	 * @return the regdate
	 */
	public String getRegdate() {
		return regdate;
	}

	/**
	 * @param regdate the regdate to set
	 */
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	/**
	 * @return the bcount
	 */
	public int getBcount() {
		return bcount;
	}

	/**
	 * @param bcount the bcount to set
	 */
	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the memberDTO
	 */
	public MemberDTO getMemberDTO() {
		if(memberDTO==null)
			memberDTO=new MemberDTO();
		return memberDTO;
	}

	/**
	 * @param memberDTO the memberDTO to set
	 */
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", title=" + title + ", text=" + text + ", regdate=" + regdate + ", bcount="
				+ bcount + ", id=" + id + ", memberDTO=" + memberDTO + "]";
	}
	
}
