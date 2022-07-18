<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/default.css">
  <link rel="stylesheet" href="./board_css/board.css">
  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/common.js"></script>
  <title>Arang</title>
</head>

<body>
<div id="wrap">
    <header id="header">
      <div class="inner">
        <!-- 로고 -->
        <h1 id="top-logo">
          <a href="../index.html">ARANG</a>
        </h1>
        <!-- 메인메뉴 -->
        <nav id="top-nav">
          <ul class="center_menu">
            <li><a href="../artists/artists.html">Artists</a></li>
            <li><a href="../gallerys/gallerys.html">Gallerys</a></li>
            <li><a href="../exhibitions/exhibitions.html">Exhibitions</a></li>
            <li><a href="storage.html">Storage</a></li>
            <li><a href="../notice/notice.html">Notice</a></li>
          </ul>
          <ul class="side_menu">
            <li><a href="#"><img class="top-img" src="../img/find.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/mypage.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/like.png"></a></li>
            <li><a href="#"><img class="top-img" src="../img/cart.png"></a></li>
          </ul>
        </nav>
      </div>
    </header>
    <div class="board_wrapper">
      <h3 class="board_top">보관 신청 게시판</h3>
      <div class="">
        <form class="">
          <fieldset>
            <legend>내 게시글 찾기</legend>
            <label>검색분류</label>
            <select class="" name="f">
              <option value="title">제목</option>
              <option value="writeId">작성자</option>
            </select>
            <label>검색어</label>
            <input type="text" name="q" value="">
            <input type="submit" value="검색">
            <a href="#">HOME TEST</a><br>
          </fieldset>
        </form>
      </div>
      <table>
        <tr>
          <td>번호</td>
          <td>이름</td>
          <td>제목</td>
          <td>날짜</td>
          <td>조회</td>
        </tr>
        <tr>
          <td>id</td>
          <td>name</td>
          <td><a href="">title</a></td>
          <td>date</td>
          <td>hit</td>
        </tr>
        <tr class="write_btn_tr">
          <td class="write_btn_td"><a href="storage_write_form.html">글쓰기</a></td>
        </tr>
      </table>
    </div>
  </div>
</body>
</html>