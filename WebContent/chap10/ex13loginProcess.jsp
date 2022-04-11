<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

session.setAttribute("username", id);
session.setAttribute("userpassword", pw);
response.sendRedirect("ex14loginSuccess.jsp");

%>