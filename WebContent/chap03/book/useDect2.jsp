<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%!public int add(int a, int b) {
		return a + b;
	}
	public int subtract(int a, int b){
		return a-b;
	}
	%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿에서 선언부 사용하기</title>
</head>
<body>
	<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);
	%>
	
	<%= value1 %> + <%= value2 %> = <%=addResult %>
	<%= "<br>" %>
	<%= value1%> - <%=value2 %> = <%=subtractResult %>
	
</body>
</html>