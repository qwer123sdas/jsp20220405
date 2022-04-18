<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="num1"%>
<%@ attribute name="num2"%>
<%@ attribute name="operator" required="true"%>
	<c:choose>
		<c:when test="${operator == '+' }">
			<p>${num1 + num2 }</p>			
		</c:when>
		<c:when test="${operator == '-' }">
			<p>${num1 - num2 }</p>			
		</c:when>
		<c:when test="${operator == '*' }">
			<p>${num1 * num2 }</p>			
		</c:when>
		<c:when test="${operator == '/' }">
			<p>${num1 / num2 }</p>			
		</c:when>
		
		<c:otherwise>
			<p>적절한 연산자를 입력해 주세요</p>
		</c:otherwise>
	</c:choose>
