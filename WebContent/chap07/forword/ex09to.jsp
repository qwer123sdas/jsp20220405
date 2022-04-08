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
		Car car1 = (Car)request.getAttribute("myCar");
		Car car2 = (Car)request.getAttribute("yourCar");
	%>
	
	<p><%=car1.getName() %> : <%=car1.getPrice() %>원</p>
	<p><%=car2.getName() %> : <%=car2.getPrice() %>원</p>
</body>
</html>