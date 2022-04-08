<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%--request parameter는 String만 넣어 줄 수 있음 --%>
<%--그래서 request attribute를 만들어서 Object도 넣어 줄수 있도록 만듬 --%>


<%
List<String> list = new ArrayList<>();
list.add("jimin");
list.add("rm");
list.add("jhope");

/*list로 꾸꾺 담고 ""라는 이름표를 붙여주는 것  */
request.setAttribute("singer", list);
%>


<jsp:forward page="ex04to.jsp">
	<jsp:param value="docter" name="job"/>
</jsp:forward>