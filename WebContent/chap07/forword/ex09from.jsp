<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.*" %>
<%
	Car car1 = new Car();
	car1.setName("κΈ°μ");
	car1.setPrice(500000);
	request.setAttribute("myCar", car1);
	
	Car car2 = new Car();
	car2.setName("νλ");
	car2.setPrice(600000);
	request.setAttribute("yourCar", car2);
%>
<jsp:forward page="ex09to.jsp"></jsp:forward>