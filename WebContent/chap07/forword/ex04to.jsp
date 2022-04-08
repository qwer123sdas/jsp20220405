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
	<h1>ex04to.jsp</h1>
	<p><%=request.getParameter("job") %></p>
<ul>	
	<%
	/* getAttribute의 리턴타입은 Object이므로 강제 형변환 필요 */
	Object attr = request.getAttribute("singer");
	List<String> list = (List<String>)attr;
	
	for(String item : list){
	%>
		<li><%=item %></li>
	<%	
	}
	%>
</ul>
</body>
</html>