<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<p>${pageScope.pageAttr1 }</p> <!--${pageAttr1}  -->
	<p>${requestScope.reqAttr1 }</p> <!-- ${reqAttr } -->
	<p>${sessionScope.sessAttr1 }</p> <!-- ${sessAttr1} -->
	<p>${applicationScope.appAttr1 }</p> <!--${appAttr1}  -->
</div>