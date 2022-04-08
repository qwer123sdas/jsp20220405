<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%! 
	/* 요일 메소드 */
 	public String method1(int i){
		String result = "";
		switch(i){
		case 1 : 
			result = ("일");
			break;
		case 2 : 
			result = ("월");
			break;
		case 3 : 
			result = ("화");
			break;
		case 4 : 
			result = ("수");
			break;
		case 5 : 
			result = ("목");
			break;
		case 6 : 
			result = ("금");
			break;
		case 7 : 
			result = ("토");
			break;
		}
		return result;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar cal = (Calendar)request.getAttribute("time");
%>
날짜 <%=cal.get(Calendar.YEAR) %>년
    <%=cal.get(Calendar.MONTH) %>월
    <%=cal.get(Calendar.DATE) %>일
<% switch(cal.get(Calendar.DAY_OF_WEEK)){
	case 1 : 
		out.print("일");
		break;
	case 2 : 
		out.print("월");
		break;
	case 3 : 
		out.print("화");
		break;
	case 4 : 
		out.print("수");
		break;
	case 5 : 
		out.print("목");
		break;
	case 6 : 
		out.print("금");
		break;
	case 7 : 
		out.print("토");
		break;
	}
%> 요일

<%=method1(cal.get(Calendar.DAY_OF_WEEK)) %>요일

현재시간 <%=cal.get(Calendar.HOUR) %>시
      <%=cal.get(Calendar.MINUTE) %>분
      <%=cal.get(Calendar.SECOND) %>초 입니다.
</body>
</html>