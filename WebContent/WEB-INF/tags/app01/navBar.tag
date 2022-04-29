<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name ="current" %>

<c:url value = "/board/list" var = "listUrl"></c:url>
<c:url value = "/board/insert" var = "insertUrl"></c:url>

<nav class="navbar navbar-expand-sm navbar-light bg-light md-3">
  <div class="container-fluid">
    <a class="navbar-brand" href="${listUrl }">HOME<i class="fa-solid fa-house m"></i></a>
    <div class="navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link ${current == 'list' ? 'active' : '' }" href="${listUrl }">글 목록 보기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link  ${current == 'insert' ? 'active' : ''}" href="${insertUrl }">글 쓰기</a>
        </li>
      </ul>
    </div>
  </div>
</nav>