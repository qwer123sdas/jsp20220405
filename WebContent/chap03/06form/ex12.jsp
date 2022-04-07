<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%!public int method(int firstNum, int lastNum, String simbolStr) {
		int result = 0;	
	
		if (simbolStr.equals("+")) {
			result = (firstNum + lastNum);
		} else if (simbolStr.equals("-")) {
			result = (firstNum - lastNum);
		} else if (simbolStr.equals("*")) {
			result = (firstNum * lastNum);
		} else {
			result = (firstNum) / lastNum;
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
		String firstStringNum = request.getParameter("firstNum");
	int firstNum = Integer.valueOf(firstStringNum);
	String lastStringNum = request.getParameter("lastNum");
	int lastNum = Integer.valueOf(lastStringNum);
	String simbolStr = request.getParameter("symbols");

	out.println("앞자리 숫자 = " + firstNum);
	out.println("뒷자리 숫자 = " + lastNum);

	out.write("<br/>");

	out.println(firstNum + simbolStr + lastNum);
	out.print(" = ");

	if (simbolStr.equals("+")) {
		out.print(firstNum + lastNum);
	} else if (simbolStr.equals("-")) {
		out.print(firstNum - lastNum);
	} else if (simbolStr.equals("*")) {
		out.print(firstNum * lastNum);
	} else {
		out.print((double) firstNum / lastNum);
	}
	
	/*메소드 사용  */
	out.write("메소드 사용해봄 : " + "<br/>");
	out.println(method(firstNum, lastNum, simbolStr));
	%>
</body>
</html>