<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 3단</h1>
	<%
	for(int i=1; i<10; i++){
		out.print("3 x " + i + " = ");
		out.print(gugudan(i));
		out.print("<br>");
		
	}
	%>
	
	<%!
	public int gugudan(int i){
		return 3*i;
	}
	%>
	﻿<%= "<b>" + 123 + "홍길동</b>" %>
</body>
</html>