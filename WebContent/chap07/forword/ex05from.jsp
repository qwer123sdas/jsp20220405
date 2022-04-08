<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	Map<String, String> map = new HashMap<>();
	map.put("movie1", "spiderman");
	map.put("movie2", "Xman");
	
	request.setAttribute("movieMap", map);
%>


<jsp:forward page="ex05to.jsp"></jsp:forward>