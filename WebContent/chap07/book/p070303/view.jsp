<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI="viewModule/a.jsp";
	}else if(code.equals("b")){
		viewPageURI="viewModule/b.jsp";
	}else{
		viewPageURI="viewModule/c.jsp";
	}
%>

<jsp:forward page="<%=viewPageURI %>"></jsp:forward>