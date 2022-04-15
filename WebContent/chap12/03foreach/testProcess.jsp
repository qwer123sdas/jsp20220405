<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>
<%	request.setCharacterEncoding("utf-8"); %>

<%
	String model = request.getParameter("model");
	String tempP = request.getParameter("price");
	int price = Integer.valueOf(tempP);

	Car car = new Car(model, price);
	
	String[] owner = request.getParameterValues("owner");
	if(owner != null){
		car.setOwners(Arrays.asList(owner));
	}
	
	List<Car> list = (List<Car>)application.getAttribute("cars");
	if(list == null){
		list = new ArrayList<>();
		application.setAttribute("cars", list);
	}
	
	list.add(car);
	response.sendRedirect("testForm.jsp");
%>