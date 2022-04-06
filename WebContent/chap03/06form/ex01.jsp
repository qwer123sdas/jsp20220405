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
	<h1>form 요소</h1>
	
	<!-- action의 값이 http의 path값 -->
	<!-- action이 없으면 현재페이지를 가리키는 path값 -->
	<form action = "http://localhost:8080/jsp_teacher/chap03/06form/ex02.jsp">
		<!--type의 text는 입력값이 나오고 submit은 버튼이 나옴  -->
		<!-- 그리고 submit을 쓰면 action으로 quary string이 되어 text값을 보내게 된다. -->
		<input type = "text" name="age" value="999">
		
		</br>
	
		<!--submit 버튼 클릭 시, form요소의 action속성으로  전송  -->
		<input type = "submit" value = "전송">
	</form>
	
	
</body>
</html>