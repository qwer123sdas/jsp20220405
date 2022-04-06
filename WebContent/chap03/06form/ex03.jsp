<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form 요소</h1>
	<h1>action속성에 파라미터가 전송될 목적지를 작성</h1>
	
	<!--프로토콜로 시작하면 외부경로를 감  -->
	<form action = "https://search.naver.com/search.naver">
		<input type = "text" name = "query">
		<input type = "submit">
	</form>
	
	<hr />
	
	<h1>action속성 : /로 시작하면, 현재 서버:port 기준(현재서와 포트기준)을 의미</h1>
	<form action="/jsp_teacher/chap03/06form/ex02.jsp">
		<input type = "text" name = "name" />
		<input type = "submit" />
	</form>
	
	<hr />
	
	<h1>프로토콜도 아니고 슬래시도 아니면 현재 경로 기준임(마지막 / 기준)</h1>
	<form action="ex02.jsp">
		<input type = "text" name = "age" />
		<input type = "submit" />
	</form>
	
	<hr />
	<h1>.. : 한 경로 위(왼쪽 /)로 옮기는 것을 의미</h1>
	<form action="../05request/ex01.jsp">
		<input type="text" name = "name"/>
		<input type="submit" />
	</form>
	
	<hr />
	<form action="../../chap02/jsp03.jsp">
		<input type="text" name= "name"/>
		<input type="submit" />
	</form>
	
	<hr />
	<h1>action속성 값을 생략하는 경우 : 현재 페이지</h1>
	<form action="">
		<input type="text" name="age" id="" />
		<input type="submit" value="전송" />
	</form>
	
	
</body>
</html>