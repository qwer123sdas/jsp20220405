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
	<h1>input 요소 type="radio"</h1>
	<form action="ex10.jsp">
		<!-- (input:r+br)*3+input:submit -->
		<!-- checkbox와 다른 기능임. radio는 1개만 고를 수 있고 나머지는 비활성화되어야함 -->
		<!-- 같은 이름을 가지고 그 같음 이름 중에서 1개만 골라야 되는 것 -->
		우편물
		<br />
		<input type="radio" name="destination" id="" value="home"/> 집
		<br />
		<input type="radio" name="destination" id="" value = "work"/> 직장
		<br />
		<input type="radio" name="destination" id="" value = "school"/> 학교
		<br />
		
		성별
		<br />
		<!-- (input:r+br)*2 -->
		<input type="radio" name="gender" id="" value="man"/> 남자
		<br />
		<input type="radio" name="gender" id="" value="gril"/> 여자
		<br />
		<input type="submit" value="전송" />
	</form>
</body>
</html>	