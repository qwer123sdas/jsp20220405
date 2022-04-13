package chap11;

import java.util.List;

public class Car {
	private String model;
	private int price;
	private boolean available;
	private List<String> owners;
	
	public Car(){}
	public Car(String model, int price) {
		this.model = model;
		this.price = price;
	}
	
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
	
	public List<String> getOwners() {
		return owners;
	}
	public void setOwners(List<String> owners) {
		this.owners = owners;
	}
	
}
