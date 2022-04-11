<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%
	String tempId = request.getParameter("id"); 
	String tempPw = request.getParameter("pw");
	
	String id = "123";
	String pw = "123";
	Map<String, String> map = new HashMap<>();
	map.put(id, pw);
	
	while(true){

		if(! map.containsKey(tempId)){
			session.setAttribute("message", "입력하신 id는 존재하지 않습니다. 다시 입력해주세요.");
			response.sendRedirect("Test01loginForm.jsp");
			break;
		}else if(!(map.get(tempId)).equals(tempPw)){
			session.setAttribute("message", "비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
			response.sendRedirect("Test01loginForm.jsp");
			break;
		}else{
			session.setAttribute("id", id);
			session.setAttribute("password", pw);
			session.setAttribute("message", "로그인되었습니다. 환영합니다" + id +"님");
			response.sendRedirect("Test01loginForm.jsp");
			break;
		}
		
	}
		
/* 	if(id.equals("123")){
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
	}  */
%>