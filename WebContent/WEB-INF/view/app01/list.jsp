<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir = "/WEB-INF/tags/app01" %>
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
	<!-- navBar -->
	<my:navBar current="list"/>
	<!-- .container>.row>.col>h1{글 목록} -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>글 목록</h1>
				
				<c:if test="${not empty param.success }">
					<c:if test="${param.success }">
						<div class="alert alert-primary">
							게시물이 삭제 되었습니다.
						</div>
					</c:if>
					
					<c:if test="${not param.success }">
						<div class="alert alert-danger">
							게시물이 삭제 중 문제가 발생 하였습니다.
						</div>
					</c:if>
				
				</c:if>
				
				<table class="table">
					<thead>
						<tr>
							<th><i class = "fa-solid fa-hashtag"></i></th>
							<th>제목</th>
							<th>작성일시<i class = "fa-solid fa-calendar"></i></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${boardList }" var = "board">
						<tr>
							<td>${board.id }</td>
							<td>
								 <!-- BoardGetServlet에 보내는 코드 -->
								<c:url value = "/board/get" var = "getUrl"> 
									<c:param name="id" value="${board.id }"></c:param>
								</c:url>
								<a href="${getUrl }">
									${board.title }	
								</a>
								
								<c:if test="${board.numOfReply > 0 }">
								<!-- 댓글 수 -->
									<span>
										<i class="fa-solid fa-comments"></i>
										${board.numOfReply }
									</span>
								</c:if>
							</td>
							<td>${board.prettyInserted }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
			</div>
		</div>
	</div>
</body>
</html>