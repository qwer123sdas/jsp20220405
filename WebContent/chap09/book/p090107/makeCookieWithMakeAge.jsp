<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>

<%
Cookie cookie = new Cookie("oneh", "1time");
cookie.setMaxAge(60*60);
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>

	<%=cookie.getName() %> <br />
	<%=cookie.getValue() %> <br />
	
	<!--cookie value 변경  -->
	<%
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie1 : cookies){
		if(cookie1.getName().equals("oneh")){
			out.print(cookie1.getValue());
			Cookie cookie2 = new Cookie("oneh", "");
			cookie2.setValue("new22");
			response.addCookie(cookie2);
		}
	}
	%>
	<%=cookie.getValue() %>
	
	
</body>
</html>