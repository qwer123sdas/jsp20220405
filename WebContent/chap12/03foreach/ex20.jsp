<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--font-awesome  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--bootstrap  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<form action>
		<input type="text" name="x"/>
		<input type="text" name="y"/>
		<input type="submit" value="출력" />
	</form>
	<c:choose>
		<c:when test="${param.x >= 2 && param.x <= 9 }">
		<p>${param.x } X ${param.y } = ${param.x * param.y }</p>
		</c:when>
		
		<c:otherwise>
			<p>적절한 단을 입력해 주세요</p>
		</c:otherwise>
	</c:choose>
	
	
	<h1>구구단 2단 ~ 9단</h1>
	<c:forEach begin="2" end="9" var="x">
		<c:forEach begin="1" end="9" var = "y" step="2">
			<p>${x} X ${y } = ${x * y }</p>
		</c:forEach>	
	</c:forEach>
	
	<h1>구구단 9단 ~ 2단</h1>
	<c:forEach begin="2" end="9" var = "x" step="1">
		<c:forEach begin="1" end="9" var = "y">
			<p>${11-x} X ${y } = ${(11-x) * y }</p>
		</c:forEach>	
	</c:forEach>
</body>
</html>