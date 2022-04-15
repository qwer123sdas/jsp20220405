<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--font-awesome  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--bootstrap  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<form action="">
		구구단 :
		<input type="number" name="dan" />
		<br />
		<input type="submit" value="출력" />
	</form>
	<c:choose>
		<c:when test="${param.dan >= 2 && param.dan <= 9}">
			<c:forEach begin="1" end="9" var="i">
				<p>${param.dan } X ${i} = ${param.dan * i }</p>
			</c:forEach>
		</c:when>
		
		<c:otherwise>
			<p> 적절한 단을 입력해 주세요.</p>
		</c:otherwise>
	</c:choose>


<%-- 	<c:choose>
		<c:when test="${param.dan == 2 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>2 X ${i } = ${2*i }</h1>
			</c:forEach>
		</c:when>

		<c:when test="${param.dan == 3 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>3 X ${i } = ${3*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:when test="${param.dan == 4 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>4 X ${i } = ${4*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:when test="${param.dan == 5 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>5 X ${i } = ${5*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:when test="${param.dan == 6 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>6 X ${i } = ${6*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:when test="${param.dan == 7 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>7 X ${i } = ${7*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:when test="${param.dan == 8 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>8 X ${i } = ${8*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:when test="${param.dan == 9 }">
			<c:forEach begin="1" end="9" var="i">
				<h1>9 X ${i } = ${9*i }</h1>
			</c:forEach>
		</c:when>
		
		<c:otherwise>
			<h1>적절한 단을 입력해주새ㅔ요</h1>
		</c:otherwise>

	</c:choose> --%>

</body>
</html>