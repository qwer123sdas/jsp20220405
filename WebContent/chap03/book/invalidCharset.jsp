<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간</title>
</head>
<body>
	<%
	Date now = new Date();
	Calendar cal = Calendar.getInstance();
	%>
	오늘은
		<%= cal.get(Calendar.YEAR) %>년
		<%= cal.get(Calendar.MONTH)+1 %> 월
		<%= cal.get(Calendar.DATE) %>일
		입니다.
	
	현재시각:
	<%=now%>
</body>
</html>