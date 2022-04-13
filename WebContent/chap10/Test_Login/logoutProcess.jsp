<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	//session.removeAttribute("id");
	session.invalidate(); // 세션 자체를 삭제
	response.sendRedirect("loginForm.jsp");
%>