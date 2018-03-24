package model;

public class CarVO {
	private String model;
	private String color;
	private int price;
	
	public CarVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CarVO(String model, String color, int price) {
		super();
		this.model = model;
		this.color = color;
		this.price = price;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "CarVO [model=" + model + ", color=" + color + ", price=" + price + "]";
	}
	
}
