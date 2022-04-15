<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*"%>
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
	<c:forEach begin="10" end="13" var="i" varStatus="status">
		<p>${i }</p>
		<p>begin, ${status.begin }</p>
		<p>end, ${status.end }</p>
		<p>count, ${status.count }</p>
		<p>index, ${status.index }</p>
		<p>first? ${status.first }</p>
		<p>last? ${status.last }</p>
		
		<!--몇번 째 loop인지
		몇번 index인지
		등의 상태정보를 가지고 있는 attribute = varStatus
		LoopTagStatus객체임. 따라서 이 객체 안의 메소드를  property로 사용 -->
		
		
	</c:forEach>
</body>
</html>