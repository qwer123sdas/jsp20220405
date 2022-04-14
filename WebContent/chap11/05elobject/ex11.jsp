<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%@ page import="chap11.*" %>
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
	<h1>pageScope, requestScope, sessionScope, applicationScope : el객체</h1>
	<h1>Map&lt; String, Object&gt; 타입</h1>
	
	<p> 각 영역의 attribute를 맵의 entry로 가지고 있음</p>
	
	<%
	pageContext.setAttribute("pageAttr1", "pageValue1");
	pageContext.setAttribute("pageAttr2", new Car("volvo", 7000));
	pageContext.setAttribute("my car", new Car("benz", 8000));
	%>
	
	<p>${pageAttr1 }</p>
	<p>${pageScope.pageAttr1 }</p>
	<hr />
	<p>${pageAttr2.model }</p>
	<p>${pageAttr2.price }</p>
	<p>${pageScope.pageAttr2.model }</p>
	<p>${pageScope.pageAttr2.price }</p>
	<hr />
	<!-- 사용하는 이유 1 -->
	<%-- <p>${my car }</p> --%>
	<p>${pageScope["my car"].model }</p>
	<p>${pageScope["my car"].price }</p>
</body>
</html>