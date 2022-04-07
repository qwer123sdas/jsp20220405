<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<!-- include directive  -->
<!--file 속성으로 이 위치(include)에 포함될 파일의 경로를 작성  -->
<!-- 다른 파일의 내용을 현재 위치에 삽입(복붙)한 후,  java로 변환하는 과정을 거침 -->
<%@ include file="module/header01.jsp"%>


	<!-- div>(h1>lorem1^p>lorem)*3 -->
	<div>
		<h1>Lorem.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores atque voluptatum minima impedit harum laudantium pariatur possimus voluptatem. Cum explicabo unde totam quaerat porro voluptatum vitae. Rem delectus aperiam voluptas.</p>
		<h1>Nisi.</h1>
		<p>Sed suscipit itaque voluptas error quisquam vitae omnis et illum rem unde non aliquid accusamus quibusdam odio eius corrupti quasi amet maxime aperiam cupiditate autem cumque dolorem consequatur reprehenderit veritatis!</p>
		<h1>Veniam!</h1>
		<p>Nobis voluptatem placeat quibusdam a autem omnis sit nulla molestias architecto tenetur cupiditate praesentium veniam nihil odio nam! Eius nulla recusandae illum odio alias enim ea excepturi sint ipsa expedita!</p>
	</div>
</body>
</html>