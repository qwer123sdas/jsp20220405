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
/* 삭제 알람 */
$(document).ready(function(){
	$(".delete-button").click(function(e){
		e.preventDefault();
		
		let check = confirm("삭제하시겠습니까?");
		
		if(check){
			$(this).closest("form").submit();	
		}
	});
});

/* 수정 창 
$(document).ready(function(){
	$(".UPDATE_BUTTON").click(function(){
		//  ${list.id } 등등 관련 값 가져오는 것 + 
		let updateHtml = `<form action="" method="post">
		<tr>
		<form action="" method="post">
			<td><input type="text" name="customerId" value="${list.id }"/> </td>
			<td><input type="text" name="customerName" value="${list.name }"/> </td>
			<td><input type="text" name="country" value="${list.country }"/> </td>
			<td><input type="text" name="city" value="${list.city }"/> </td>
			<td><input type="submit" value="수정완료" /></td>
			<td><form action="/chap14/S14Servlet19_Delete">
					<input type="hidden" name="id"  value="${list.id }"/>
						<button>삭제</button>
					</form> 
			</td>
		</form>
		</tr>
		</form>`;
		$(".table_tbody").prepend(updateHtml);
	});
});
*/

</script>
<body>
<div class="container">
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
				<th>DELETE</th>
				<th>UPDATE</th>
			</tr>
		</thead>
		<tbody class="table_tbody">
			<c:forEach items="${customerList }" var="list">
			<tr>
				<td>${list.id }</td>
				<td>${list.name }</td>
				<td>${list.country }</td>
				<td>${list.city }</td>
				<td>${list.postCode }</td>
				<td>
					<form action="/chap14/S14Servlet19_Delete">
					<input type="hidden" name="id"  value="${list.id }"/>
					<button>삭제</button>
					</form>
				</td>
				<td>
					<button class="UPDATE_BUTTON">수정</button>
				</td>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- nav>ul.pagination>li.page-item*7>a.page-link -->
	<nav>
		<ul class="pagination justify-content-center">
			<c:if test="${prevPage >= 1 }">
				<!-- li.page-item>a.page-link>span>{&laquo;} -->
				<li class="page-item">
					<a class="page-link" href="S14Servlet19?page=${prevPage }">
						<span>&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:forEach begin = "${startPage }" end = "${endPage }"  var = "pageNum"> 
				<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
					<a href="S14Servlet19?page=${pageNum }" 
					class="page-link" >${pageNum }</a>
				</li>
			</c:forEach>
			<c:if test="${lastPage != endPage }"> 
				<li class="page-item">
					<a class="page-link" href="S14Servlet19?page=${nextPage }">
						<span>&raquo;</span>
					</a>
				</li>
			</c:if>
		</ul>
	</nav>
</div>
</body>
</html>