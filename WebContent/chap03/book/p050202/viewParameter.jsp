<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청파라미터 출력</title>
</head>
<body>
	<!-- 1  -->
	<b>request.getParameter() 메서드 사용</b> <br />	
	name 파라미터 = <%= request.getParameter("name") %> <br />
	address 파라미터 = <%=request.getParameter("address") %>
	
	<!-- 2 -->
	<p>
	<b>request.getParameterValues()메서드 사용</b> <br />
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null){
			for(int i = 0; i<values.length; i++)
				out.println(values[i]);
		}else{
			out.println("선택안함");
		}
	%>
	</p>
	
	<!-- 3 : 파라미터의 이름만 가져오기-->
	<p>
	<b>request.getParameterNames()메서드 사용</b> <br />
	<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
		out.println(name);
	}
	%>
	
	<!-- 4 -->
	<p>
		<b>request.getParameterMap()메서드 사용</b> <br />
		<%
			Map<String, String[]> parameterMap = request.getParameterMap();
			String[] nameParam = parameterMap.get("name");
			if(nameParam != null){
				out.println("name = ");
				out.println(nameParam[0]);
			}
		%>
	</p>
	
</body>
</html>