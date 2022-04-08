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

<h1>ex02to.jsp</h1>
<p><%=request.getParameter("group") %></p>
<p><%=request.getParameter("character") %></p>
<p><%=request.getParameter("film") %></p>

</body>
</html>