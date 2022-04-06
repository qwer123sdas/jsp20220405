<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%!public int gugudan(int first, int second) {
		return second*first;

	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- dan 요청파라미터 값에 따라 구구단 출력되도록 작성 -->
	<!-- ?dan=2면 2단이 출력되도록 만들어보기-->
	<h1>구구단</h1>
	
	<% String danStr = request.getParameter("dan");%> 
	<%
	if(danStr == null){
		danStr = "주어진 번호가 없는 ";
		out.print("<h1>" + danStr + "단</h1>");
	%>
		<h1>단 번호를 입력해 주세요.</h1>
	<% 			
	}else{
		out.print("<h1>" + danStr + "단</h1>");
		
		int dan = Integer.valueOf(danStr);
		for(int i= 1; i<10; i++){
			out.write("<p>"+ dan + " x " + i + " = ");
			out.print(gugudan(dan, i) + "</p>");
		}
	}
	%>
	

	

</body>
</html>