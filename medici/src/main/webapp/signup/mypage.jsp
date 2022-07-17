<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="../design/css_main/style.css">
  <link rel="stylesheet" href="../design/css_main/default.css">
  <title>Arang</title>
</head>

<body class="mainpage main mainswiper">
  <!-- header -->
  <div id="wrap">
    <header id="header">
      <div class="inner">
        <!-- 로고 -->
        <h1 id="top-logo">
          <a href="index.html">ARANG</a>
        </h1>
        <!-- 메인메뉴 -->
        <nav id="top-nav">
          <ul class="center_menu">
            <li><a href="/medici/list.do">Artists</a></li>
            <li><a href="/medici/list.do">Gallerys</a></li>
            <li><a href="/medici/list.do">Exhibitions</a></li>
            <li><a href="/medici/service/storage_service.jsp">Storage</a></li>
            <li><a href="/medici/list.do">Notice</a></li>
          </ul>
          <ul class="side_menu">
			<c:if test="${userId==null}">
        	<li><a href='<c:url value="/signup/login"/>'>login</a><br></li>
			<a href='<c:url value="/signup/add_user_db.jsp"/>'>회원가입</a><br>
        	</c:if>
            <c:if test="${userId!=null}">
            ${userId}님
          	<li><a href='<c:url value="/signup/logout"/>'>logout</a><br></li>
			<li><a href='<c:url value="/signup/delete_user.jsp"/>'>삭제</a><br></li>
			<li><a href='<c:url value="/signup/update_user.jsp"/>'>수정</a><br></li>
         	</c:if>
            <c:if test="${userId!=null&&userId=='admin'}">
			<h3>관리자 계정입니다.</h3>
			<a href='<c:url value="/signup/select_user.do"/>'>조회</a><br>
        	</c:if>
            <li><a href="#"><img class="top-img" src="../img/find.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/mypage.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/like.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/cart.png"></a></li>
          </ul>
        </nav>
      </div>
    </header>
    <main>
      <!-- 메인배너 -->
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide mainswiperimg1"></div>
          <div class="swiper-slide mainswiperimg2"></div>
          <div class="swiper-slide mainswiperimg3"></div>
          <div class="swiper-slide mainswiperimg4"></div>
        </div>
        <div class="swiper-pagination"></div>
      </div>
      <!-- 컨텐츠영역 -->
      <div class="container">
        <div class="content">
          <div class="con_line">new artist of the month</div>
          <div class="inner">
            <div class="box items_2">
              <div class="items">
                <img src="../img/some_night.jpg" alt="some_night">
              </div>
              <div class="items">
                <img src="../img/untitle2022-6.jpg" alt="untitle2022-6">
              </div>
            </div>
          </div>
          <div class="con_line">ArtWorks</div>
          <div class="inner">
            <div class="box items_2">
              <div class="items">
                <img src="../img/some_night.jpg" alt="some_night">
              </div>
              <div class="items">
                <img src="../img/untitle2022-6.jpg" alt="untitle2022-6">
              </div>
            </div>
          </div>
          <div class="con_line"></div>
          <div class="inner">
            <div class="box first items_2">
              <div class="items">
                <h3 class="title">Untitle 2002-6</h3>
                <p>Based on the original Rey Collection designed by Swiss designer Bruno Rey in 1971, HAY has teamed up with Dietiker to relaunch the Rey Chair. With its distinctively rounded edges and curved backrest, it was the first chair to be
                  patented with Dietiker’s unique screwless wood-to-metal connection and has become one of the most successful Swiss chairs of all time. Its solid construction, strength and stackable design give it a timeless quality that makes it
                  suitable for using in a wide variety of domestic, public or corporate settings. The iconic chair has been modified in new dimensions and material combinations to accommodate contemporary lifestyle requirements. Made in solid wood,
                  it is available in original colours, as well as new tones and upholstered seat options selected by HAY. The Rey Collection is not available from HAY in Switzerland.</p>
                <a href="../products/furniture.html" class="gbtn">More View</a>
              </div>
              <div class="items">
                <img src="../img/untitle2022-6.jpg" alt="untitle2022-6">
              </div>
            </div>
          </div>
          <div class="inner">
            <div class="box items_2">
              <div class="items">
                <img src="../img/thumb_nail04.jpg" alt="thumb_nail04">
              </div>
              <div class="items">
                <h3 class="title">BOROSILICATE MUG</h3>
                <p>Crafted in durable borosilicate glass, the Borosilicate Mug has a functional design in beautiful jade colours. Featuring a straight body and a round, symmetrical handle, it is an elegant upgrade to your everyday kitchen essentials.
                  It comes in a pack of two and is available in different colours.</p>
                <a href="../products/accessories.html" class="gbtn">More View</a>
              </div>
            </div>
          </div>
          <div class="inner">
            <div class="box items_2">
              <div class="items">
                <h3 class="title">BALCONY LOW TABLE</h3>
                <p>Designed for HAY by Ronan and Erwan Bouroullec, the Balcony Low Table is an elegant side table for outdoor use. The simple square design is softened by slender legs, with the multiple holes on the table’s surface strengthening the
                  construction, as well as creating a distinct expression. Made in powder-coated steel with an outdoor primer for optimal resilience and durability, Balcony is available in a number of different colour and size options, making it a
                  versatile table that can be used as an extra seat or storage surface in all kinds of outdoor spaces.</p>
                <a href="../products/furniture.html" class="gbtn">More View</a>
              </div>
              <div class="items">
                <img src="../img/thumb_nail03.jpg" alt="thumb_nail03">
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- footer -->
    <footer id="footer">
      <!-- footer상단역역 -->
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="column footer-logo">
              <h3>
                <a href="./">HAY</a>
              </h3>
            </div>
            <div class="column">
              <h4>site map</h4>
              <ul>
                <li><a href="#intro">Home</a></li>
                <li><a href="#myprofile">Products</a></li>
                <li><a href="#portfolio">Inspiration</a></li>
                <li><a href="#myskill">Archive</a></li>
                <li><a href="#ourclients">Community</a></li>
                <li><a href="#mytools">Location</a></li>
              </ul>
            </div>
            <div class="column">
              <h4>contct us</h4>
              <p>
                A108 Adam street<br>
                New York, NY 504092<br>
                United states<br>
                <strong>Phone :</strong><a href="tel:+82-10-0000-0000"> +82-10-0000-0000</a><br>
                <strong>Email :</strong><a href="mailto:mymail.naver.com"> mymail.naver.com</a>
              </p>
            </div>
            <div class="column news">
              <h4>news</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <form>
                <input type="text" name="search"><input type="submit" value="search">
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- footer하단영역 -->
      <div class="container">
        <div class="copyright">
          &copy;copyright <strong>MyPage</strong> All Rights Reserved
        </div>
        <div class="credits"></div>
        Designed By <a href="mailto:shasha@naver.com">MySelf</a>
      </div>
    </footer>
  </div>
  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</body>

</html>