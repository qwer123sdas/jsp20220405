<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%!
public int gugudan(int i, int j){
	return i * j;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 2 ~ 9단</h1>
	<%
		for(int i = 2; i<10; i++){ 
			for(int j=1; j<10; j++){
				out.print(i + " x " + j + " = " + gugudan(i, j));
				out.print("<br>");
			}
		}
	%>
</body>
</html>