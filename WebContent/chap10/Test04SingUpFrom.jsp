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
	<form action="Test05SingUpProcess.jsp" method="post">
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
		<input type="email" name="email" id="" /> <br /> 
		<h3>휴대전화</h3>
		<input type="tel" name="tel"/> <br />
		
		<input type="submit" value="가입완료" />
	
	</form>
</body>
</html>