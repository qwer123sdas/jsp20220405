package chap14.javaBeans;

public class Customer {
	private String name;
	private String country;
	private String city;
	private String postCode;
	
	public Customer(){}
	
	public Customer(String name, String country, String city){
		this.name = name;
		this.country = country;
		this.city = city;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
}
