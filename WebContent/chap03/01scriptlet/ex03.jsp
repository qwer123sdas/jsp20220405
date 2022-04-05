<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1~10출력</h1>
	
	<!--p{&}*10  -->
	<%
	for(int i=1; i<=10; i++){
		out.write("<p>" + i + "</p>");
		out.println("<p>" + i+10 +"</p>");
	}
	%>
</body>
</html>