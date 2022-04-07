<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산기</h1>
	<form action="ex12.jsp">
		<!-- input+selcet>option*4^input+input:submit -->
		<input type="text" name="firstNum"/>
		<select name="symbols">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">X</option>
			<option value="/">/</option>
		</select>
		<input type="text" name="lastNum" />
		<input type="submit" value="계산" />
	</form>
</body>
</html>