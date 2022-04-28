<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="myTest.CustomerDTO"%>

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
<%
	CustomerDTO dto = (CustomerDTO)request.getAttribute("dto");
%>
	<table class="table">
		<thead>
			<tr>
				<th>CustomerID</th>
				<th>CustomerName</th>
				<th>City</th>
				<th>돌아가기</th>
			</tr>
		</thead>
		<tbody>
			<form action="controller.jsp">
			<input type="hidden" name="command" value="db_insert" />
				<tr>
					<td>
						 맨뒤의 자리임
					</td>
					<td>
						 <input type="text" name="name" value=""/> <br />
					</td>
					<td>
						 <input type="text" name="city" /> <br />
					</td>
					<td>
						<!-- <input type="button" value="저장하기" onclick="location.href='controller.jsp?command=db_insert'"/> -->
						<!-- 위에는 query string을 보내지 않음 -->
						<input type="submit" value="저장하기" />
					</td>
				</tr>
			</form>
		</tbody>
	</table>
</body>
</html>