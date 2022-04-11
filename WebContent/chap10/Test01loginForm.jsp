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
	<h1>로그인 화면</h1>
	<%
	String message = (String)session.getAttribute("message");
	if(message != null){
		out.print("<p>");
		out.print(message);
		out.print("</p>");
		session.removeAttribute("message");
	}
	%>
	<%
	String id = (String)session.getAttribute("id");
	if(id == null){
	%>
		<form action="Test02loginProcess.jsp" method="post">
			아이디 : <input type="text" name="id"/> <br />
			비밀번호 : <input type="password" name="pw"/> <br />
			
			<input type="submit" value="로그인"/>
		</form>
	<%
	}else if(id.equals("123")){
		session.getAttribute("message");
	%>
		<h2><a href = "Test03logoutProcess.jsp">로그아웃</a></h2>
	<%
	}else{
	%>
		<form action="Test02loginProcess.jsp" method="post">
			아이디 : <input type="text" name="id"/> <br />
			비밀번호 : <input type="password" name="pw"/> <br />
			
			<input type="submit" value="로그인"/>
		</form>
	<%
	}
	%>
	
	<form action="">
		<input type="button" value="회원가입"/>
	</form>
</body>
</html>