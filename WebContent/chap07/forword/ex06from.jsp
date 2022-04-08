<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
String attr1 = "docter";
request.setAttribute("job", attr1);

List<String> list = new ArrayList<>();
list.add("김자바");
list.add("김서울");
list.add("김도쿄");

request.setAttribute("names", list);
%>
<jsp:forward page="ex06to.jsp">
	<jsp:param value="123" name="123"/>
</jsp:forward>