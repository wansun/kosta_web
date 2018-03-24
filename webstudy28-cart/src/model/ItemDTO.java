package model;

public class ItemDTO {
	private int itemNo;
	private String name;
	private String maker;
	private int price;
	private String detail;
	public ItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemDTO(int itemNo, String name, String maker, int price, String detail) {
		super();
		this.itemNo = itemNo;
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.detail = detail;
	}
	public ItemDTO(String name, String maker, int price, String detail) {
		super();
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.detail = detail;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
}
