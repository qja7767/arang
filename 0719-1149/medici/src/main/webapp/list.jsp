<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@page import="java.util.*"%>
<%@page import="com.arang.medici.board.dto.*"%>
<%@page import="com.arang.medici.board.cmd.*"%>
<%@page import="com.arang.medici.board.dao.*"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>스토리지 리스트</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="./design/css_default/normalize.css">
  <link rel="stylesheet" href="./design/css_default/default.css">
  <link rel="stylesheet" href="./design/css_default/header.css">
  <link rel="stylesheet" href="./design/css_notice/style.css">
</head>
<body>
	<div id="wrap">
    <header id="header">
      <div class="inner">
        <!-- 로고 -->
        <h1 id="top-logo">
          <a href="/medici/page/main.jsp">ARANG</a>
        </h1>
        <!-- 메인메뉴 -->
        <nav id="top-nav">
          <ul class="center_menu">
            <li><a href="/medici/page/artists_all.jsp">Artists</a></li>
            <li><a href="/medici/page/gallerys.jsp">Gallerys</a></li>
            <li><a href="/medici/list.do">Exhibitions</a></li>
            <li><a href="/medici/service/storage_service.jsp">Storage</a></li>
            <li><a href="/medici/list.do">Notice</a></li>
          </ul>
          <ul class="side_menu">
            <li><a href="/medici/signup/select_user.do"><img class="top-img" src="./img/find.png"></a></li>
            <li><a href="/medici/signup/myInfo.jsp"><img class="top-img" src="./img/mypage.png"></a></li>
            <li><a href="#"><img class="top-img" src="./img/like.png"></a></li>
            <li><a href="#"><img class="top-img" src="./img/cart.png"></a></li>
			<c:if test="${userId==null}">
        	<li><a href='<c:url value="/signup/login"/>'>login</a></li>
        	</c:if>
            <c:if test="${userId!=null&&userId!='admin'}">
            <li><a href='<c:url value="/signup/logout"/>'>logout</a></li>
         	</c:if>
            <c:if test="${userId!=null&&userId=='admin'}">
            <li>${userId}(관리자)</li>
        	</c:if>
          </ul>
        </nav>
      </div>
    </header>
   <div class="board_wrapper">
      <h3 class="board_top">Notice</h3>
      <div>
        <form method="post" action="searchedBbs.do">
          <fieldset>
            <div class="field_inner">
              <label>검색 분류</label>
              <select name="f">
                <option value="bTitle">제목</option>
                <option value="bName">작성자</option>
              </select>
              <label>검색어</label>
              <input type="text" name="q" value="${param.q}" />
              <input type="submit" value="검색" />
              <a href="/medici/write_view.do"><button type="button">글쓰기</button></a>
            </div>
          </fieldset>
        </form>
      </div>

      <table class="notice_list">
        <tr>
          <td>No.</td>
          <td>이름</td>
          <td>제목</td>
          <td>날짜</td>
          <td>조회</td>
        </tr>
        <c:forEach items="${list}" var="dto">
          <tr>
            <td>${dto.bId}</td>
            <td>${dto.bName}</td>
            <td>
              <c:forEach begin="1" end="${dto.bIndent}"></c:forEach>
              <a href="view.do?bId=${dto.bId}">${dto.bTitle}</a>
            </td>
            <td>${dto.bDate}</td>
            <td>${dto.bHit}</td>
          </tr>
        </c:forEach>
      </table>

    </div>
  </div>
</body>
</html>