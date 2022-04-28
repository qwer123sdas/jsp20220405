<%@page import="java.util.concurrent.CyclicBarrier"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import = "java.util.*"%>
<%@ page import = "javax.sql.DataSource" %>

<%@ page import = "myTest.CustomerDTO"%>
<%@ page import="myTest.CustomerDAO"%>

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
	

    DataSource ds = (DataSource)application.getAttribute("dbpool"); 
	CustomerDAO dao = new CustomerDAO(ds);
	
	// 요청이 main일 때----------------------------------------------------------------------
	if(command.equals("main")){
		//읽기 ----------------------------------------------------------------------
		List<CustomerDTO> list = dao.selectAll();
		request.setAttribute("boardlist", list);
		
		pageContext.forward("main.jsp");
		
		
	}else if(command.equals("db_update")){
		//수정버튼 ----------------------------------------------------------------------
		int id = Integer.valueOf(request.getParameter("id"));
		CustomerDTO dto = dao.selectOne(id);
		request.setAttribute("dto", dto);
		
		pageContext.forward("db_update.jsp");
		
	}else if(command.equals("update")){
		//db 수정----------------------------------------------------------------------
		String id = request.getParameter("id");
		String customerName = request.getParameter("name");
		String city = request.getParameter("city");
		/*
		System.out.println(id); System.out.println(customerName); System.out.println(city);
		*/
		
		CustomerDTO dto = new CustomerDTO();
		
		dto.setId(Integer.valueOf(id));
		dto.setName(customerName);
		dto.setCity(city);
		
		int res = dao.update(dto);
		dao.update(dto);
		// 문제 : forward해서 그대로 query string이 가기 때문에 command=main이 없어서 오류가 생김
		if(res > 0){
%>
	<script type="text/javascript">
		alert("글 수정 성공");
		location.href = "controller.jsp?command=main";
	</script>
<%
		}
		// pageContext.forward("/controller.jsp/command=selectone&id=" + id);
	
	}else if(command.equals("db_delete")){
		//삭제----------------------------------------------------------------------
		int id = Integer.valueOf(request.getParameter("id"));
		dao.delete(id);
		
%>
		<script type="text/javascript">
			location.href = "controller.jsp?command=main";
		</script>
<%
		//pageContext.forward("main.jsp");
	} /*else if(){
		추가
	}*/

%>

</body>
</html>