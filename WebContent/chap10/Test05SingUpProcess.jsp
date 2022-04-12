<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	Map<String, String> map = new HashMap<>();
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	map.put(id, pw);
	/* request.getParameter("password"); */


	application.setAttribute("singUp", map);

	response.sendRedirect("Test01loginForm.jsp");
%>