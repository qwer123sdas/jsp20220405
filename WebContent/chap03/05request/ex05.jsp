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
	<!-- num1, num2 파라미터의 값을 더해서 출력하는 코드를 작성 -->
	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	
	if(num1==null || num2 == null){
		out.print("<h1>" + "num을 넣어주세요" + "</h>");
	}else{
		int numOne = Integer.valueOf(num1);
		int numTwe = Integer.valueOf(num2);
		
		out.print("<h1>" + num1 + " + " + num2 + " = " + (numOne + numTwe) );
		%>
		<h1><%=num1 %> + <%= num2 %> = <%=numOne + numTwe %> 입니다. </h1>
		
	<%	
	}
	%>
</body>
</html>