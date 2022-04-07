<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div>
 	<%
 	String startStr = request.getParameter("start");
 	String endStr = request.getParameter("end");
 	
 	int start = Integer.valueOf(startStr);
 	int end = Integer.valueOf(endStr);
 	
 	out.print("|");
 	
 	for(int i = start; i<=end; i++){
 	%>
 		<a href="#"><%=i %></a> |
 	<%	
 	}
 	%>
 
 </div>