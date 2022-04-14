<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>

		<form action="loginAction.jsp" method="post">
			아이디 : <input type="text" name="id"/> <br />
			비밀번호 : <input type="password" name="pw"/> <br />
			
			<input type="submit" value="로그인"/>
		</form>
		
		<form action="SignUpFrom.jsp">
			<input type="submit" value="회원가입"/>
		</form>