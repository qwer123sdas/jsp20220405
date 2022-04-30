<%@page import="myTest.CustomerDTO"%>
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

/* 수정 창*/ 
 /* 
 javascript로 만들어진 html에서 가져오는 방법
 
$(document).ready(function(){
	$(".UPDATE_BUTTON").click(function(){
		//  ${list.id } 등등 관련 값 가져오는 것 + 
		let updateHtml = `<tr>
		<form action="" method="post">
			<td><input type="text" name="customerId" value=""/> </td>
			<td><input type="text" name="customerName" value=""/> </td>
			<td><input type="text" name="country" value=""/> </td>
			<td><input type="text" name="city" value=""/> </td>
			<td><input type="submit" value="수정완료" /></td>
			<td><form action="/chap14/S14Servlet19_Delete">
					<input type="hidden" name="id"  value=""/>
						<button>삭제</button>
					</form> 
			</td>
		</form>
		</tr>`;
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
	<!-- 검색 -->
		<form action="controller.jsp">
			<input type="hidden" name="command"  value="main"/>
			<input type="hidden" name="page"  value="1"/>
			검색 : 	<select name="find_title" id="">
							<option ${(param.find_title == "CustomerName")? "selected" : "" } value="CustomerName">CustomerName</option>
							<option ${(param.find_title == "City")? "selected" : "" } value="City">city</option>
						</select>
			<input type="text" name="find_keyword" value="${param.find_keyword }"/> 
			<button><i class="fa-solid fa-magnifying-glass"></i></button>
		</form>
	
	<!-- 추가  -->
	<form action="db_insert.jsp">
		<button> 추가하기 </button>
	</form>
	
	<table class="table">
		<thead>
			<tr>
				<th>CustomerID</th>
				<th>CustomerName</th>
				<th>City</th>
				<th>DELETE</th>
				<th>UPDATE</th>
			</tr>
		</thead>
		<tbody class="table_tbody">
			<c:forEach items="${boardlist }" var="list">
			<tr>
				<td>${list.id }</td>
				<td>${list.name }</td>
				<td>${list.city }</td>
				<td>
					<form action="controller.jsp">
					<input type="hidden" name="command" value="db_delete"/>
					<input type="hidden" name="id"  value="${list.id }"/>
					<button class = "delete-button">삭제</button>
					</form>
				</td>
				<td>
					<form action="controller.jsp">
					<input type="hidden" name="command" value="db_update"/>
					<input type="hidden" name="id" value="${list.id }"/>
					<button class="UPDATE_BUTTON">수정</button>
					</form>
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
					<a class="page-link" href="<%= request.getContextPath() %>/myTestView/controller.jsp?command=main&page=${prevPage }&find_title=${param.find_title }&find_keyword=${param.find_keyword}">
						<span>&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:forEach begin = "${startPage }" end = "${endPage }"  var = "pageNum"> 
				<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
					<a href="<%= request.getContextPath() %>/myTestView/controller.jsp?command=main&page=${pageNum }&find_title=${param.find_title }&find_keyword=${param.find_keyword}" 
					class="page-link" >${pageNum }</a>
				</li>
			</c:forEach>
			<c:if test="${lastPage != endPage }"> 
				<li class="page-item">
					<a class="page-link" href="<%= request.getContextPath() %>/myTestView/controller.jsp?command=main&page=${nextPage }&find_title=${param.find_title }&find_keyword=${param.find_keyword}">
						<span>&raquo;</span>
					</a>
				</li>
			</c:if>
		</ul>
	</nav>
</div>
</body>
</html>