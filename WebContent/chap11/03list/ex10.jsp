<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<%
Car car1 = new Car();
Car car2 = new Car();
List<String> list1 = new ArrayList<>();
list1.add("cha");
list1.add("son");

car1.setOwners(list1);
car2.setOwners(list1);

pageContext.setAttribute("aCar", car1);
pageContext.setAttribute("bCar", car2);
%>
<!-- 필드를 쓰는게 아니라 property이기 때문, property는 필드나 메소드가 아님.  -->
<p>${aCar.owners[1] }</p>
<p>${bCar.owners[0] }</p>
</body>
</html>