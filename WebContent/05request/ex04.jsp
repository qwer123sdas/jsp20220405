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
<!-- dan 요청 파라미터 값에 따라 구구단 출력되도록 작성 -->
<!-- http://localhost:8080/jsp20220405/chap03/05request/ex04.jsp?dan=2 -->
<!-- 2단 출력 -->

<!-- http://localhost:8080/jsp20220405/chap03/05request/ex04.jsp?dan=5 -->
<!-- 5단 출력 -->

<%
String danStr = request.getParameter("dan");

if (danStr == null) {
%>
	<h1>단 번호를 입력해주세요</h1>
<%	
} else {
	int dan = Integer.parseInt(danStr);
	
	for (int i = 1; i <= 9; i++) {
%>
		<h3><%= dan %> X <%= i %> = <%= dan * i %></h3>
<%	
	}
}

%>
</body>
</html>









