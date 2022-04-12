<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<%
	Car car1 = new Car();
	car1.setModel("tesla");
	car1.setPrice(7000);
	pageContext.setAttribute("car1", car1);
	
	Car car2 = new Car();
	car2.setModel("volvo");
	car2.setPrice(8000);
	pageContext.setAttribute("car2", car2);
	
	pageContext.setAttribute("message", "hello world");
	pageContext.setAttribute(name, value)
	%>
	
	<p>${car1.model }</p>
	<p>${car1.price }</p>
	<p>${car1.available }</p>
	
	<p>${car2.model }</p>
	<p>${car2.price }</p>
	<p>${car2.available }</p>
	
	<p>${message }</p>
</body>
</html>