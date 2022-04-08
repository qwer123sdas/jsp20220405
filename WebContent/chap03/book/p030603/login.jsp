<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("memberId");
	if(id !=null && id.equals("madvirus")){
		response.sendRedirect("index.jsp");
	}else{
		
%>
<html>
<head>
<title></title>
</head>
<body>
	잘못된 아이디입니다.
</body>
</html>

<%
	}
%>