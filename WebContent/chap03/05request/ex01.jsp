<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request 객체 : javax.servlet.http.HttpServletRequest의 타입</h1>
	
	<h3>method : <%= request.getMethod() %></h3>
	<h3>path : <%= request.getRequestURI() %></h3>
	
	<h3>query string : <%= request.getQueryString() %></h3>
	
	<h3>host 이름 : <%= request.getServerName() %></h3>
	<h3>port : <%= request.getServerPort() %></h3>
	<h3>Accept Header : <%= request.getHeader("Accept") %></h3>
	<h3>URL : <%= request.getRequestURL() %></h3>
</body>
</html>