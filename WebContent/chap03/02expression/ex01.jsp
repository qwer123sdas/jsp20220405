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
	<h1>expression 표현식</h1>
	<p>﻿명령식이 아니라 out객체, print라는 메소드의 매개값(argument)으로 번역되어짐.</p>
	<%= "표현식 " %>
	<% // 스크립트릿 %>
	
	<%
	out.print("hello");
	out.print("hi");
	%>
	<%="hello"%><%="hi"%>
</body>
</html>