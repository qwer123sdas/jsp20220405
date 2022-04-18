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
	<h1>c:url로 queryString(요청파라미터)로 작성하는 방법</h1>
	
	<!--c:url 사용 x  -->
	<a href="https://www.google.com/search?q=bts">bts검색</a>
	
	
	<!--c:url 사용 o  -->
	<c:url value="https://www.google.com/search" var="btsSearchUrl">
		<c:param name="q" value = "bts"></c:param>
	</c:url>
	<a href="${btsSearchUrl }">bts검색</a>
	
	<hr />
	
	<!--c:url 사용 x  -->
	<a href="https://www.google.com/search?q=apple+ipad">애플패드</a>
	<!-- 결과 : q=apple ipad -->
	
	<c:url value = "https://www.google.com/search" var="ipadSearchUrl">
		<c:param name="q" value="apple+ipad"></c:param>
	</c:url>
	<a href="${ipadSearchUrl }">애플 + 아이패드</a>
	
	
	
</body>
</html>