<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%
try{
	String tempId = request.getParameter("id"); 
	String tempPw = request.getParameter("pw");
	
	int result = 0;
	
	Map<String, String> map = (HashMap<String, String>) application.getAttribute("signUp");
	
	while(true){
		if( !map.containsKey(tempId) ){
			// 아이디 틀림
			result=0;
			break;
		}else if(!(map.get(tempId)).equals(tempPw)){
			// 비밀번호 틀림
			result= -1;
			break;
		}else{
			// 로그인 가능
			result = 1;
			break;
		}
	}
	

	if(result == 0){
			session.setAttribute("message", "입력하신 id는 존재하지 않습니다. 다시 입력해주세요.");
			session.setAttribute("logout", "0");
			response.sendRedirect("loginForm.jsp");
	}else if(result == -1){
			session.setAttribute("message", "비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
			session.setAttribute("logout", "0");
			response.sendRedirect("loginForm.jsp");
	}else if (result == 1){
			session.setAttribute("message", "로그인되었습니다. 환영합니다" + tempId +"님");
			session.setAttribute("logout", "1");
			response.sendRedirect("loginForm.jsp");
	}
}catch(Exception e){
/* 	session.setAttribute("message", "NullPointException발생");
	response.sendRedirect("loginForm.jsp"); */
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