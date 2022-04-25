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
	<form action="S14Servlet13Test02">
	<!-- select>option*3 -->
		나라 : <select name="country" id="">
			<c:forEach items="${countryList }" var="country">
				<option value="${country }">${country }</option>
			</c:forEach>
		</select>
			
			<br />
			
		도시 : <select name="city" id="">
			<c:forEach items="${cityList }" var="city">
				<option value="${city }">${city }</option>
			</c:forEach>
		</select>
		</select>
		
		<input type="submit" value="전송" />
	</form>
	
	<div class="container">
	<div class="row">
		<div class="col">

			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>도시</th>
						<th>나라</th>
						<th><i class="fa-solid fa-signs-post"></i></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items = "${customers }" var = "customer">
					<tr>
						<td>${customer.name }</td>
						<td>${customer.city }</td>
						<td>${customer.country }</td>
						<td>${customer.postCode }</td>	
					</tr>
				</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</div>
</body>
</html>