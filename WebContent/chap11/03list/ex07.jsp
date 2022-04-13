<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<%
List<Car> list1 = new ArrayList<>();
list1.add(new Car("폭스바겐", 1000));
list1.add(new Car("현대", 500));

List<Car> list2 = new ArrayList<>();
list2.add(new Car("볼보", 2000));
list2.add(new Car("벤츠", 1500));

pageContext.setAttribute("myCars", list1);
pageContext.setAttribute("yourCars", list2);

%>
<%

for(int i = 0; i<list1.size(); i++){
	pageContext.setAttribute("item", i);
%>
	<p>myCar모델 : ${myCars[item].model }</p>
	<p>myCar가격 : ${myCars[item].price }</p>
<%	
}
%>
<hr />
<%
for(int i = 0; i<list1.size(); i++){
	pageContext.setAttribute("item", i);
%>
	<p>yourCar모델 : ${yourCars[item].model }</p>
	<p>yourCar가격 : ${yourCars[item].price }</p>
<%	
}
%>

<hr />

<%
for(Car item : list1){
	pageContext.setAttribute("item", item);
%>
	<p>${item.model }</p>
	<p>${item.price }</p>
<%	
}
%>

</body>
</html>