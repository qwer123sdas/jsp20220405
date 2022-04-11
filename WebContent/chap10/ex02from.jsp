<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>

<%

	request.setAttribute("movie", "Avengers");
	session.setAttribute("film", "doctor");

	response.sendRedirect("ex02to.jsp");
%>