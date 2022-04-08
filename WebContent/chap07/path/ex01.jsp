<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<!-- /는 절대경로 -->
	<!--client가 사용하면 context root를 작성해야 함.  -->
	<!-- 왜냐하면 서버명 다음의 /이기 때문 -->
	<!--하지만 이를 바꿀 수 있음. 어떻게? 직접바꾸기(근데 이건 나중에 배움  -->
	<!-- 지금은, server의 명 바꿀 수 있음.-->
	<a href="jsp20220405/chap07/path/ex02.jsp">ex02이동(절대경로)</a>
	<!-- 그래서 만약 서버명이 바뀌면 이렇게 절대경로로 작성한 경우 오류가 발생하므로 절대경로로작성하면 불펴함. -->
	<!-- 따라서 이러한 문제를 해결하기 위한 것이 request.getContextPath임. 왜냐하면 path데이터가 request객체에 저장되어 있기 때문에 객체의 메소드를 활용하여 언제나 객체에 있는 값을 가져올 수 있음 -->
	<a href="<%=request.getContextPath() %>/chap07/path/ex02.jsp">ex02로 이동(절대경로 with contextPath)</a>
	
	<br />
	<!-- 상대경로  -->
	<a href="ex02.jsp">ex02로 이동(상대경로)</a>
	<br />
	
	<%--forward 상대경로 --%>
<%-- 	<jsp:forward page="ex02.jsp"></jsp:forward> --%>
	
	<%-- forward 절대경로 --%>
	<!--context root의 한칸 앞 /부터  -->
<%-- 	<jsp:forward page="/chap07/path/ex02.jsp"></jsp:forward> --%>
	
</body>
</html>