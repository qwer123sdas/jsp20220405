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

<h1>ex01form.jsp</h1>

<%--forward action tag --%>
<%--실행 흐름을 forward태그의  page속성으로 바꿈 --%>
<%-- forward를 선언하면 모든 ex01form의 코드의 출력이 초기화 됨 --%>
<jsp:forward page="ex01to.jsp"></jsp:forward>

<h1>ex01form.jsp</h1>

</body>
</html>