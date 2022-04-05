
<%--page directive  --%>
<%-- directive는 <%@ %>를 말함 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>임포트하는 방법</h1>
	<p>page directive의 import attribute사용</p>
	
	<% 
	List<String> list = new ArrayList<>();
	list.add("hello");
	%>
</body>
</html>