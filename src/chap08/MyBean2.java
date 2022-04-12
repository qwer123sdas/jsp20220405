package chap08;

// 이 클래스의 속성은 productModel, discountPrice 2개
public class MyBean2 {
	MyBean2(){
	}
	
	private String model;
	private int price;
	
	public String getProductModel() {
		return model;
	}
	public int getDiscountPrice() {
		return price;
	}
	
	// is : get메소드의 리턴 타입이 boolean이면 get말고 is로 변경해서 써도 된다.
	public boolean isHighPrice() {
		return price > 10000;
	}
}
