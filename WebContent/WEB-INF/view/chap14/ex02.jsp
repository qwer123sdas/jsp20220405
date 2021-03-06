<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--font-awesome  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--bootstrap  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--Jquery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<p>${requestScope.name }이 사는 나라는 ${country }이고 도시는 ${city }입니다.</p>
	<p></p>
	
	<hr />
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>name</th>
				<th>country</th>
				<th>city</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var = "item" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${item.name }</td>
				<td>${item.country }</td>
				<td>${item.city }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	<hr />
	
	<c:if test="${not empty postCode }">
		<h2>우편번호 : ${postCode }</h2>
	</c:if>
</body>
</html>