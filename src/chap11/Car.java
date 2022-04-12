package chap11;

public class Car {
	private String model;
	private int price;
	private boolean available;
	
	public Car(){}
	
	public void setModel(String model) {
		this.model = model;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getModel() {
		return model;
	}
	public int getPrice() {
		return price;
	}
	
	
	public void setAvailable(boolean available) {
		this.available = available;
	}
	// is
	public boolean isAvailable() {
		return available;
	}
	
}
