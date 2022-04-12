<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length>0){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("name")){
			Cookie cookie2 = new Cookie("name", "");
			cookie2.setPath("/jsp99/chap09/book");
			cookie2.setMaxAge(0);
			response.addCookie(cookie2);
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 삭제</h1>
			쿠키목록 <br />
	<%

	if(cookies != null && cookies.length > 0){
		for(Cookie cookie : cookies){
	%>
			<%=cookie.getName() %> = <%=URLDecoder.decode(cookie.getValue(), "utf-8") %> <br />
			<%=cookie.getPath() %>
	<%		
		}
	}else{
		out.print("쿠키가 존재하지 않습니다.");
	}
	%>
</body>
</html>