<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>

		<form action="Test02loginProcess.jsp" method="post">
			아이디 : <input type="text" name="id"/> <br />
			비밀번호 : <input type="password" name="pw"/> <br />
			
			<input type="submit" value="로그인"/>
		</form>
		
		<a href="">회원가입</a>
		<form action="Test04SingUp.jsp">
			<input type="button" value="회원가입"/>
		</form>