<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.*" %>
<%
	Car car1 = new Car();
	car1.setName("기아");
	car1.setPrice(500000);
	request.setAttribute("myCar", car1);
	
	Car car2 = new Car();
	car2.setName("현대");
	car2.setPrice(600000);
	request.setAttribute("yourCar", car2);
%>
<jsp:forward page="ex09to.jsp"></jsp:forward>