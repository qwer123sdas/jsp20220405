<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*"%>
<%@ page import = "myTest.CustomerDTO"%>
<%@page import="myTest.CustomerDAO"%>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<% 
	//요청이 담긴 command에 담아  어떻게 해줄지 정함
	String command = request.getParameter("command");
	
	CustomerDAO dao = new CustomerDAO();
	
	// 요청이 main일 때
	if(command.equals("main")){
		List<CustomerDTO> list = dao.selectAll();
		request.setAttribute("boardlist", list);
		
		pageContext.forward("main.jsp");
	}else if(command.equals("db_update")){
		int db_update = Integer.valueOf(request.getParameter("db_update"));
		
		CustomerDTO dto = dao.selectOne(db_update);
		request.setAttribute("dto", dto);
		PageContext.forward("db_update.jsp");
	}

%>
</body>
</html>