<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Object o1 = request.getAttribute("myCar");
	Car car = (Car)o1;
	%>
	<%=car.getName() %>
	<%=car.getPrice() %>
</body>
</html>