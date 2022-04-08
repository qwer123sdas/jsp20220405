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
	<%
	Object obj = request.getAttribute("movieMap");
	Map<String, String> map = (Map<String, String>)obj;
	%>
	
	<p><%=map.get("movie1") %></p>
	<p><%=map.get("movie2") %></p>
</body>
</html>