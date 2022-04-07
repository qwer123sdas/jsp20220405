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
	<%
		String str = request.getParameter("str");
		StringBuffer sb = new StringBuffer(str);
		sb.reverse();
	%>
	<p style="white-space: pre;"><%=sb%></p>
		<hr />
	<textarea name="" id="" cols="30" rows="10"><%=sb%></textarea>

	<!--  -->
	<%
		String text = request.getParameter("str");
		text=new StringBuilder(text).reverse().toString();	
	%>
	
	<p style="white-space: pre;"><%=text%></p>
		
	
</body>
</html>