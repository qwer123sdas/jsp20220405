<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<%
/* try{ */

	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String pwResign = request.getParameter("passwordResign");
	
	Map<String, String> map = new HashMap<>();
	map.put(id, pw);
	map.put("123@naver.com","123");
	application.setAttribute("signUp", map);
	
	Map<String, String> readyMap = (HashMap<String, String>) application.getAttribute("signUp");
	//아이디 중복여부
/* 	if(readyMap.get(id)==null){
		session.setAttribute("idMessage", "Nullpoint Exception 발생");
		session.setAttribute("idResult", 0);
		session.setAttribute("pwResult", 0); */
		
	if(readyMap.containsKey(id)){
		/* 중복된 아이디 존재 */
		session.setAttribute("idMessage", "이미 있는 ID입니다.");
		session.setAttribute("idResult", 0);
		session.setAttribute("pwResult", 1);
	}else if(pw.equals(pwResign)){
		/* 비밀번호 확인과 일치하지 않음 */
		session.setAttribute("pwMessage", "비밀번호가 일치하지 않습니다.");
		session.setAttribute("idResult", 1);
		session.setAttribute("pwResult", 0);
	}else if( (!readyMap.containsKey(id)) && (readyMap.get(id)).equals(pw)){
		/* 계정 만들기 성공 */
		map.put(id, pw);
		session.setAttribute("idResult", 1);
		session.setAttribute("pwResult", 1);
	}

		
	int idResult = (Integer)session.getAttribute("idResult");
	int pwResult = (Integer)session.getAttribute("pwResult");
	if(idResult==1 && pwResult==1){
		application.setAttribute("signUp", map);
		response.sendRedirect("loginForm.jsp");
	}else{
		response.sendRedirect("SingUpFrom.jsp");
	}
/* }catch(Exception e){
	session.setAttribute("idMessage", "이미 있는 ID입니다.");
	session.setAttribute("pwMessage", "비밀번호가 일치하지 않습니다.");
	response.sendRedirect("SingUpFrom.jsp");
} */
%>