<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	Map<String, String> map = new HashMap<>();
	String id = request.getParameter("id");
	map.put("id", id);
	String pw = request.getParameter("password");
	map.put("password", pw);
	/* request.getParameter("password"); */
	String name = request.getParameter("name");
	map.put("name", name);
	String birth = request.getParameter("birth");
	map.put("birth", birth);
	String sex = request.getParameter("sex");
	map.put("sex", sex);
	String tel = request.getParameter("tel");
	map.put("tel", tel);
	
	application.setAttribute("singUp", map);
	response.sendRedirect();
%>