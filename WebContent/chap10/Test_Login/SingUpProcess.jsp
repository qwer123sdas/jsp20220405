<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	Map<String, String> map = new HashMap<>();
	// 임시 저장( nullPointExpeption 제거)
	map.put("123", "123");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	map.put(id, pw);
	/* request.getParameter("password"); */


	application.setAttribute("signUp", map);

	response.sendRedirect("loginForm.jsp");
%>