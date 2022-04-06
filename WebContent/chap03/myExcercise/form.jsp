<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> java : 회원가입 </title>
</head>
<body>
	<style>	

	</style>
	<form action="viewParameter.jsp">
		<h3>아이디</h3> 
		<input type="email" name="id" id="" value="      @naver.com" /> <br />
		<h3>비밀번호</h3>
		<input type="password" name="password"/><br />
		<h3>비밀번호 재확인</h3>
		<input type="password" name="password"/><br />
		<h3>이름</h3>
		<input type="text" name="name" id="" /> <br />
		<h3>생년월일</h3>	
		<input type="date" name="birth" /> <br />
		<h3>성별</h3>
		<input type="radio" name="sex" value="man" /> 남 <br />
		<input type="radio" name="sex"value="girl" /> 여 <br />
		<h3>본인 확인 이메일</h3>
		<input type="email" name="" id="" /> <br /> 
		<h3>휴대전화</h3>
		<input type="tel" name="tel"/> <br />
		
		<input type="submit" value="가입하기" />
	
	</form>
</body>
</html>