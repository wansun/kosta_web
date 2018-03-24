package model;

public class ProductDTO {
	private int pno;
	private String name;
	private String maker;
	private int price;
	private String date;
	
	public ProductDTO(int pno, String name, String maker, int price, String date) {
		super();
		this.pno = pno;
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.date = date;
	}
	
	public ProductDTO(String name, String maker, int price, String date) {
		super();
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.date = date;
	}

	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
