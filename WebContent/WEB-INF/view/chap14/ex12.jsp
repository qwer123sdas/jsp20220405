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

<title>Insert title here</title>
</head>
<script>
$(document).ready(function(){
	$(".delete-button").click(function(e){
		e.preventDefault();
		
		let check = confirm("삭제하시겠습니까?");
		
		if(check){
			$(this).closest("form").submit();	
		}
	});
});
</script>
<body>

	<c:if test="${not empty param.success }"> 
		<c:if test="${param.success }">
			<div class="alert alert-success">
				삭제되었습니다.
			</div>
		</c:if>
		
		<c:if test="${not param.success }">
			<div class="alert alert-success">
				삭제되지 않았습니다.
			</div>
		</c:if>
	</c:if>
	
	<h1>고객 리스트</h1>
	<table class="table">
		<thead>
			<tr>
				<th>CustomerID</th>
				<th>CustomerName</th>
				<th>Country</th>
				<th>City</th>
				<th>PostalCode</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customerList }" var="list">
			<tr>
				<td>${list.id }</td>
				<td>${list.name }</td>
				<td>${list.country }</td>
				<td>${list.city }</td>
				<td>${list.postCode }</td>
				<td>
					<form action="" method="post">
						<input type="hidden" name="id" value = "${list.id }"/>
						<button class="delete-button btn-danger">삭제</button>
					</form>
				</td>
			</tr>
			</c:forEach>
		</tbody>
		</div>
	</table>
</body>
</html>