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
	<h1>form 요소들(input, textarea, select, button)</h1>
	<h2>input</h2>
	<p>input요소의 type속성에 따라 입력하는 방법이 달라짐</p>
	<hr />
	
	<h1>type = "text"</h1>
	<form action="ex05.jsp">
		<!-- text 입력란 -->
		<!-- <input type="text" /> -->
		<!--name attribute랑 함께 작성해야지 query string이 작성된다  -->
		<input type="text" name = "group" />
		
		<!--전송버튼  -->
		<input type="submit" />
	</form>
	<hr />
	
	<h1>type = "password"</h1>
	<form action="ex05.jsp">
	<!--value값이 암호화 되서 나타난다.하지만 제출하면 querty 부분에는 암호화되지않고 나타난다  -->
		<input type="password" name = "pw"/>
		<input type="submit" />
	</form>
	<hr />
	
	<h1>type = "date"</h1>
	<form action="ex05.jsp">
		<!-- 제출하면 String으로 query부분에 나온다 -->
		<input type="date" name="birth"/>
		<input type="submit" />
	
	</form>
	
	<h1>type ="number", type="email", type="file"</h1>
	<form action="ex05.jsp">
		<input type="number" name = "num" /> <br />
		<input type="email" name="email" /> <br />
		<input type="file" name = "file"/> <br />
		<input type="submit" />
	</form>
	
	
	

</body>
</html>