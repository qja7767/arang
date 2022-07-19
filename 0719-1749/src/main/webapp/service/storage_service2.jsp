<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>   
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>스토리지 신청</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="../design/css_default/normalize.css">
  <link rel="stylesheet" href="../design/css_default/default.css">
  <link rel="stylesheet" href="../design/css_default/header.css">
  <link rel="stylesheet" href="../design/css_storage_service2/storage_service2.css">
</head>

<body>
  <div id="wrap">
<header id="header">
      <div class="inner">
        <!-- 로고 -->
        <h1 id="top-logo">
          <a href="/medici/signup/mypage.jsp">ARANG</a>
        </h1>
        <!-- 메인메뉴 -->
        <nav id="top-nav">
          <ul class="center_menu">
            <li><a href="/medici/artists_all.jsp">Artists</a></li>
            <li><a href="/medici/page/gallerys.jsp">Gallerys</a></li>
            <li><a href="/medici/list.do">Exhibitions</a></li>
            <li><a href="/medici/service/storage_service2.jsp">Storage</a></li>
            <li><a href="/medici/list.do">Notice</a></li>
          </ul>
          <ul class="side_menu">
            <li><a href="/medici/signup/select_user.do"><img class="top-img" src="../img/find.png"></a></li>
            <li><a href="/medici/signup/myInfo.jsp"><img class="top-img" src="../img/mypage.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/like.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/cart.png"></a></li>
			<c:if test="${userId==null}">
        	<li><a href='<c:url value="/signup/login"/>'>login</a></li>
        	</c:if>
            <c:if test="${userId!=null&&userId!='admin'}">
            <li><a href='<c:url value="/signup/logout"/>'>logout</a></li>
         	</c:if>
            <c:if test="${userId!=null&&userId=='admin'}">
            <li>${userId}(관리자)</li>
            <li><a href='<c:url value="/signup/logout"/>'>logout</a></li>
        	</c:if>
          </ul>
        </nav>
      </div>
    </header>
    <div id="storage_service_wrap">
      <div class="title">
        <h1>작품 보관 서비스 신청</h1>
      </div>
      <form action="storage_service1.jsp" method="post">
        <table class="table_a">
          <tr>
            <td>
              <input type="text" class="big" placeholder="작품이름" name="artworkNum">
            </td>
          </tr>
          <tr>
            <td>
              <select name="storageAddr">
                <option value="">원하는 보관소 지역</option>
                <option value="">서울/경기</option>
                <option value="">대전</option>
                <option value="">광주</option>
                <option value="">대구</option>
                <option value="">부산</option>
                <option value="">울산</option>
                <option value="">강원</option>
                <option value="">충청</option>
                <option value="">경상</option>
                <option value="">전라</option>
                <option value="">제주</option>
              </select>
            </td>
          </tr>
          <tr>
            <td class="date_td">
              <p>보관시작</p>
              <p>보관종료</p>
              <input type="date" name="startPeriod">
              <input type="date" name="endPeriod">
            </td>
          </tr>
          <tr>
            <td>
              <select class="middle">
                  <option name="deliveryService">배송서비스</option>
                  <option value="N">No</option>
                  <option value="Y">Yes</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>
              <input type="text" class="big" placeholder="이메일(아이디)" name="walletId" value="${userId}">
            </td>
          </tr>
          <tr>
            <td>
              <input type="text" class="big" placeholder="결제금액" name="balance">
            </td>
          </tr>
        </table>
        <div class="button-group">
          <button class="gbtn normal"><a href="/medici/service/storage_success.jsp">결제</a></button>
          <button class="gbtn normal gray">취소</button>
        </div>
      </form>
    </div>
  </div>
</body>

</html>