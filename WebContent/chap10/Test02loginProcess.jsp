<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw");
	if(id.equals("123")){
		// 로그인 성공
		session.setAttribute("id", id);
		session.setAttribute("password", pw);
		session.setAttribute("message", "로그인 성공하였습니다. 반갑습니다." +id+"님");
		
		response.sendRedirect("Test01loginForm.jsp");
	}else{
		// 로그인 실패
		session.setAttribute("id", id);
		session.setAttribute("message", "아이디나 패스워드가 일치하지 않습니다. 다시 입력하시기바랍니다.");
		response.sendRedirect("Test01loginForm.jsp");
	}
%>