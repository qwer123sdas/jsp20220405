<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>두배로 출력</h1>

<%
for(int i =1; i<6; i++){
	out.print(doubling(i));
	out.print("<br>");
}
%>

<%!
public int doubling(int i){
	return i*2;
}
%>
</body>
</html>