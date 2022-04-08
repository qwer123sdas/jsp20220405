<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%--<jsp:forwrd>액션태그를 실행하면 성생했던 출력결과는 모두 제거된다. --%>
<html>
	<head>
		<title>from 제목</title>
	</head>
	<body>
		이 페이지는 from.jsp의 내용
		<jsp:forward page="to.jsp"></jsp:forward>
	</body>
</html>
