<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie1 = new Cookie("path1", URLEncoder.encode("경로:/chap09/path1", "utf-8"));
cookie1.setPath("/chap09/path1");
response.addCookie(cookie1);

Cookie cookie2 = new Cookie("path2", URLEncoder.encode("경로:", "utf-8"));
response.addCookie(cookie2);

Cookie cookie3 = new Cookie("path3", URLEncoder.encode("경로:/", "utf-8"));
cookie3.setPath("/");
response.addCookie(cookie3);

Cookie cookie4 = new Cookie("path3", URLEncoder.encode("경로:/chap09/path2", "utf-8"));
cookie4.setPath("/chap09/path2");
response.addCookie(cookie4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	다음과 같이 쿠키를 생성
</body>
</html>