package chap08;

// 

public class MyBean1 {
	
	// ㉡기본 생성자를 가지고 있어야 한다.
	MyBean1(){
		
	}
	
	//﻿ ㉢클래스의 속성(property)들은 get, set 혹은 표준 명명법을 따르는 메서드들을 사용해 접근할 수 있어야 한다.﻿
	// property(속성) :  get(is), set 으로 시작하는 메소드에 의해 결정 되는 것
	// 메소드명에서 get(is), set을 제거하고 앞글자를 소문자로 바꾼 것이 [속성명]이다.
	
	// 예) 아래 클래스의 get(is), set메소드 4개 중, get, set을 제거하고 앞글자를 소문자로 바꾸면
	// name, age가 속성(property)이다. (getAge->age, setAge->age)
	// 속성은 필드명에의해 결정되는 것이 아니라, 메소드명에 의해 결정되기 때문에 위와같은 규칙을 잘 알아야 한다.
	
	// get메소드는 속성읽기
	// set메소드는 속성쓰기
	
	// is : get메소드의 리턴 타입이 boolean이면 is로 변경 가능하다.
	
	private String name;
	private int age;
	
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
