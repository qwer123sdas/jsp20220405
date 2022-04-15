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
<!--Jquery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<script>
	$(document).ready(function(){
		$("#addButton").click(function(){
			$("#inputContainer").append("<input type="text" name="owner"> </br>");
		})
	})
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="testProcess.jsp">
		모델명 : <input type="text" name="model"/> <br />
		가격 : <input type="text" name="price"/> <br />
		타는 사람 : <button id="addButton" type = "button"><i class="fa-solid fa-plus"></i></button>
		<div id="inputContainer">
			
		</div>
		<input type="submit" value="전송" />
 	</form>
 	
 	<hr />
 	
 	<c:if test="${! empty applicationScope }">
 	<table>
 		<thead>
 			<tr>
 				<th>#</th>
 				<th>모델</th>
 				<th>가격</th>
 				<th>타는 사람</th>
 			</tr>
 		</thead>
 		<tbody>
			<c:forEach items=" ${applicationScope.cars }" var ="car" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${car.model }</td>
				<td>${car.price }</td>
				<td>
					<c:forEach items="${applicationScope.cars }" var = "car" varStatus="status">
						${car.owner }<c:if test="${! status.last}">, </c:if>
					</c:forEach>
				</td>
			</tr>
			</c:forEach>
 		</tbody>
 	
 	</table>
 	</c:if>
 	
</body>
</html>