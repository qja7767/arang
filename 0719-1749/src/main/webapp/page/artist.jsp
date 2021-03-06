<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>artists_all</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="../design/css_main/normalize.css">
  <link rel="stylesheet" href="../design/css_main/default.css">
  <link rel="stylesheet" href="../design/css_default/header.css">
  <link rel="stylesheet" href="../design/css_artists/artist.css">
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
            <li><a href="../exhibitions/exhibitions.html">Exhibitions</a></li>
            <li><a href="/medici/service/storage_service1.jsp">Storage</a></li>
            <li><a href="/medici/service/notice_list.jsp">Notice</a></li>
          </ul>
          <ul class="side_menu">
            <li><a href="./find/find.html"><img src="../design/img/icon/find.png" alt="find"></a></li>
            <li><a href="/medici/page/login.jsp"><img src="../design/img/icon/mypage.png" alt="mypage"></a></li>
            <li><a href="./like/like.html"><img src="../design/img/icon/like.png" alt="like"></a></li>
            <li><a href="./cart/cart.html"><img src="../design/img/icon/cart.png" alt="cart"></a></li>
            <li><a href="./notice/notice.html">Login</a></li>
          </ul>
        </nav>
      </div>
    </header>

       <!-- 작가페이지 -->
    <div class="headline_artworks">
      <h3>ARTISTS</h3>
      <nav id="sub-nav">
        <ul>
          <li><a href="/medici/page/artists_all.jsp">All</a></li>
          <li><a href="./artists/Sculptor.html">Sculptor</a></li>
          <li><a href="./artists/Painter.html">Painter</a></li>
          <li><a href="./artists/OrientalPainter.html">OrientalPainter</a></li>
          <li><a href="./artists/DrawingArtist.html">DrawingArtist</a></li>
          <li><a href="./artists/Illustator.html">Illustator</a></li>
          <li><a href="./artists/DigitalArtist.html">DigitalArtist</a></li>
          <li><a href="./artists/Photographer.html">Photographer</a></li>
        </ul>
      </nav>
    </div>
    <div class="artists_box">
      <div class="header">
        <div class="header_inner">
          <a class="artist_name" href="/medici/page/artist.jsp"><h4>Jeong-a Jo</h4></a>
          <button type="button">Painter</button>
        </div>
      </div>
      <div class="artwork_info">
        <h5>환상적인 세계로 풀어낸 인간의 기억과 감정</h5>
        <p>A memory and emotion of human being describing fantastic world</p>
        <p>조정아는 실체가 없는 기억과 인간관계 속에서 얻은 깨달음을 초현실주의적인 풍경으로 풀어낸다.<br>
          색과 구성에 있어서 키치함이 엿보이는 그의 회화는 원금감이나 비율을 깨고 공간을 과장해서 표현하고 있으며,<br>
          곳곳에 인과관계가 불문명한 사물이 배치되어 있기도 하다.<br>
          특히 밝고 명확한 컬러의 조화가 회화의 환상적인 분위기를 더욱 돋보이게 한다.<br>
          작가가 '기억의 정원'이라고 불리는 그의 풍경화는 마음을 정화하고 가다듬는 행위에서 비롯된것이다.<br>
          그는 사랑스어우면서도 초현실적인 이미지들을 통해 불편하거나 아픈 기억들을 정화한다.</p>
      </div>
      <div class="works_inner">
        <div class="img_inner">
          <a href="#"><img src="../design/img/JoJeongA/some_night.jpg" alt="some_night"></a>
          <p class="work_title"><strong>Some night</strong></p>
          <p>2018</p>
          <p>53X45 Painting</p>
          <p>Gouache and color pencil on canvas</p>
        </div>
        <div class="img_inner">
          <a href="#"><img src="../design/img/JoJeongA/love_your_self.jpg" alt="love_your_self"></a>
          <p class="work_title"><strong>Love Your Self</strong></p>
          <p>2018</p>
          <p>53X45 Painting</p>
          <p>Gouache and color pencil on canvas</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>