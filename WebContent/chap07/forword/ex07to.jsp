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
		List<String> list = (List<String>)request.getAttribute("names");
		Map<String, String> map =(Map<String, String>)request.getAttribute("movies");
	%>
	
	<%
		for(String item : list){
	%>
		<li><%=item %></li>
	<%		
		}
	%>
	
	<p><%= map.get("doctor")%></p>
	<p><%= map.get("spiderman")%></p>
	<p><%= map.get("avengers")%></p>
	
	<%
	Set<String> keySet = map.keySet();
	
	for(String key : keySet){
		String value = map.get(key);
	%>
		<li><%=key %>는 <%=value %> 개봉이다.</li>
	<%	
	}
	%>
</body>
</html>