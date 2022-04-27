package myTest;

public class CustomerDTO {
	private int id;
	private String name;
	private String city;
	
	public CustomerDTO(){}
	
	public CustomerDTO(String name, String city){
		this.name = name;
		this.city = city;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
}

