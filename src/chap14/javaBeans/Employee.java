package chap14.javaBeans;

public class Employee {
	private String firstName;
	private String lastName;
	private String birthDay;
	
	public Employee() {}
	public Employee(String firstName, String lastName, String birthDay) {
		this.birthDay = birthDay;
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	
	
}
