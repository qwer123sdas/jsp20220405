<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 =
	<%=request.getParameter("id")%>
	<br />
	비밀번호 =
	<%=request.getParameter("password")%>
	<br />
	비밀번호 재확인 =
	<%=request.getParameter("password")%>
	<br />
	<!--  -->
	<%
	Map<String, String[]> passwordMap = request.getParameterMap();
	String[] passwordResign = passwordMap.get("password");
	if(passwordMap != null){
		if(passwordResign[0]!=passwordResign[1]){
			out.println("비밀번호 재설정해야함");
		}else{
			out.println("비밀번호 설정확인");
			out.println("확정비밀번호 : " + passwordResign[0]);
		}
	}
	%>
	아이디 =
	<%=request.getParameter("id")%>
	<br />
	아이디 =
	<%=request.getParameter("id")%>
	<br />
	아이디 =
	<%=request.getParameter("id")%>
	<br />
</body>
</html>