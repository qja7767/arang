<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>My Info 2</title>
<meta charset="UTF-8">
<style type="text/css">
html, body {
  height: 100%;
}

body {
  background: #eae9e9;
  color: #2e2e2e;
}

html, body, p, dl, dt, dd, ul, li, h1, h2, h3, h4, h5, h6 {
  margin: 0;
  padding: 0;
}

li {
  list-style: none;
}

a {
  text-decoration: none;
  color: #2e2e2e;
  transition: 0.5s;
}

a:hover {
  color: tomato;
}

.side_menu li a img {
  width: 15px;
  height: 15px;
}
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Libre+Baskerville&family=Lora&display=swap');
input {
  padding: 10px;
  display: inline-block;
  border: 1px solid #cccccc;
}

/* input size type */
input.big {
  width: 478px;
}

input.middle {
  width: 250px;
}

input.small {
  width: 150px;
  height: 7px;
}

input.tiny {
  width: 100px;
  height: 5px;
}

input:focus {
  outline: none;
  border: 1px solid #9d9d9d;
}

/* check box label style */

input[type=checkbox]+label {
  position: relative;
  display: inline-block;
  width: 21px;
  height: 21px;
  border: 1px solid #999999;
  margin: 5px 0 0 12px;
}

input[type=checkbox]:checked+label::after {
  content: '';
  position: absolute;
  display: inline-block;
  width: 0px;
  height: 1.5px;
  top: 0;
  left: 0;
  padding: 3px;
  border-style: solid;
  border-color: #000000;
  border-width: 0 3px 3px 0;
  left: 50%;
  top: calc(50% - 2.5px);
  transform: translateX(-50%) translateY(-50%) rotate(45deg);
  /* transform: translate(-50%, -50%) rotate(45deg) ; */
}

/* button type */
button {
  background-color: transparent;
  background-image: none;
  border: none;
  box-sizing: border-box;
}

button:focus {
  outline: none;
}

.gbtn {
  padding: 10px 15px;
}

.gbtn.normal {
  padding: 10px 15px;
  color: #ffffff;
  font-size: 15px;
  min-width: 110px;
  background-color: #333333;
}

/* button color style */
.gbtn.gray {
  background-color: #818286;
}

.gbtn.transparent {
  color: #000000;
  border: 1px solid #999999;
  background-color: transparent;
}

.gbtn.transparent:focus {
  border: 1px solid #333333;
}

.button-group {
  text-align: center;
  margin-top: 50px;
}

.txt {
  display: inline-block;
  font-size: 14px;
  color: #999999;
  margin: 5px 0 0 5px;
}

/* general ui// */
#wrap {
  max-width: 980px;
  min-width: 768px;
  margin: 0 auto;
}

#wrap .title {
  position: relative;
  padding: 100px 0 0;
  border-bottom: 2px solid #333333;
  margin-top: 50px;
}

#wrap .title h1 {
  display: inline-block;
  font-size: 25px;
  line-height: 1;
  color: #333333;
}

#wrap .title .prec {
  float: right;
  height: 25px;
  line-height: 25px;
  padding: 0;
  color: #666666;
}

#wrap .title .prec em {
  font-size: 8px;
  color: #f85858;
  margin-right: 5px;
}

input+.gbtn {
  margin-left: 5px;
}

label+.txt {
  line-height: 21px;
}

.box {
  display: flex;
}

.box .items {
  box-sizing: border-box;
  flex: 100%;
  flex-shrink: 0;
  font-size: 18px;
  padding: 50px;
}

.box .items:nth-child(2) {
  padding-top: 0;
  padding-bottom: 30px;
}

.box .items>p {
  padding-top: 5px;
}

.box .items .pictureinfo {
  padding-top: 20px;
}

.box .items .title {
  font-size: 32px;
  margin-bottom: 20px;
}

.box .items img {
  width: 100%;
}

.box.items_2 .items {
  flex: 50%;
}

.content-wrap {
  text-align: center;
}

.content-wrap .innerbox {
  display: inline-block;
  position: relative;
  margin-bottom: 50px;
  width: 300px;
  height: 100%;
  padding: 0 20px;
}

.content-wrap .innerbox:hover .imgbox,
.content-wrap .innerbox:hover .textbox {
  opacity: 0.7;
}

.content-wrap .innerbox .imgbox {
  width: 300px;
  height: 400px;
  transition: 0.5s;
  opacity: 1;
}

.content-wrap .innerbox .imgbox img {
  object-fit: cover;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 1;
}

.content-wrap .innerbox .textbox {
  margin: 15px 0 35px;
  transition: 0.5s;
  opacity: 1;
}

.content-wrap .innerbox .textbox p {
  line-height: 25px;
}

.map-info-window {
  width: 150px;
  text-align: center;
  padding: 6px 0;
}

#wrap {
  width: 1320px;
  height: 100%;
  margin: 0 auto;
}

#wrap #header {
  position: fixed;
  left: 0;
  top: 0;
  z-index: 100;
  width: 100%;
  height: 100%;
  margin: 0 auto;
  background-color: #eae9e9;
  border-bottom: 1px solid #ededed;
  box-sizing: border-box;
  box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
  height: 50px;
  margin-top: 30px;
  margin-bottom: 10px;
}

#wrap #header .inner {
  position: relative;
  max-width: 1320px;
  width: 100%;
  height: 100%;
  margin: 0 auto;
  display: table;
}

#wrap #header .inner #top-logo {
  float: left;
  font-size: 44px;
}

#wrap #header .inner #top-logo a {
  font-family: "Bebas Neue", cursive;
  font-weight: normal;
  line-height: 50px;
  top: 0;
}

#wrap #header .inner #top-logo a:hover {
  color: #2e2e2e;
}

#wrap #header .inner #top-nav {
  z-index: 500;
  position: relative;
  height: 50px;
  float: right;
}

#wrap #header .inner #top-nav ul {
  float: left;
}

#wrap #header .inner #top-nav ul li {
  position: relative;
  float: left;
  margin-left: 50px;
}

#wrap #header .inner #top-nav ul li:first-child {
  margin-left: 0;
}

#wrap #header .inner #top-nav ul li a {
  display: inline-block;
  width: 100%;
  height: 100%;
  line-height: 50px;
}

#wrap #header .inner #top-nav ul li:hover .sub-menu {
  visibility: visible;
  top: 100%;
  opacity: 1;
}

#wrap #header .inner #top-nav ul.center_menu {
  margin-right: 250px;
}

#wrap #header .inner #top-nav ul.side_menu li {
  margin-left: 20px;
}

#wrap #header .inner #top-nav ul .sub-menu {
  position: absolute;
  border: 1px solid tomato;
  visibility: hidden;
  top: calc(100% - 3px);
  opacity: 0;
  transition: 0.3s;
}

#wrap #header .inner #top-nav ul .sub-menu li {
  width: 100%;
  margin: 0;
  background: #ededed;
  box-sizing: border-box;
  padding: 0 10px;
  min-width: 150px;
  transition: 0.3s;
}

#wrap #header .inner #top-nav ul .sub-menu li:hover {
  background: tomato;
}

#wrap #header .inner #top-nav ul .sub-menu li:hover a {
  color: #ededed;
}

#wrap #header .inner #top-nav ul .sub-menu li a {
  height: 40px;
  line-height: 40px;
}

#wrap main {
  position: relative;
  height: 100%;
}

#wrap #footer {
  margin-top: 150px;
  color: #2e2e2e;
}

#wrap #footer>.container {
  padding: 30px 0;
  text-align: center;
}

#wrap #footer .container .row {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}

#wrap #footer .container .row .column {
  flex: 20%;
  padding: 0 10px;
  margin-bottom: 30px;
  box-sizing: border-box;
}

#wrap #footer .container .row .column.footer-logo {
  flex: 100px;
}

#wrap #footer .container .row .column.footer-logo h3 {
  font-size: 34px;
  line-height: 1;
  font-weight: 700;
  padding: 2px 0 2px 0;
}

#wrap #footer .container .row .column.news input {
  margin-top: 10px;
}

#wrap #footer .container .row .column.news input[type="text"] {
  border: 0;
  padding: 6px 8px;
  width: 65%;
  box-sizing: border-box;
}

#wrap #footer .container .row .column.news input[type="submit"] {
  border: 0;
  padding: 6px 0;
  width: 35%;
  background: tomato;
  color: white;
  cursor: pointer;
}

#wrap #footer .container .row .column h4 {
  position: relative;
  font-size: 14px;
  font-weight: 700;
  padding-bottom: 12px;
  margin-bottom: 20px;
}

#wrap #footer .container .row .column h4:before,
#wrap #footer .container .row .column h4:after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 2px;
}

#wrap #footer .container .row .column h4:before {
  right: 0;
  background: #2e2e2e;
}

#wrap #footer .container .row .column h4:after {
  width: 100px;
  background: tomato;
}

#wrap #footer .container .row .column ul li {
  border-bottom: 1px solid #2e2e2e;
  padding: 10px 0;
}

#wrap #footer .container .row .column ul li:nth-child(1) {
  padding-top: 0;
}

#wrap #footer .container .row .column p {
  line-height: 26px;
}

#wrap #footer .footer-top {
  padding: 60px 0 30px;
}

.bot-p {
  margin-top: 30px;
}

body.mainpage.main main {
  width: 100%;
  height: 100%;
}

body.mainpage.main main .con_line {
  font-family: "Bebas Neue", cursive;
  font-size: 15px;
  border-bottom: 1px solid #2e2e2e;
}

body.mainpage.main main .box {
  display: flex;
}

body.mainpage.main main .box.first {
  margin-top: 80px;
}

body.mainpage.main main .box .items {
  box-sizing: border-box;
  flex: 100%;
  flex-shrink: 0;
  font-size: 18px;
  padding: 50px;
}

body.mainpage.main main .box .items .title {
  font-size: 32px;
  margin-bottom: 20px;
}

body.mainpage.main main .box .items img {
  width: 100%;
}

body.mainpage.main main .box.items_2 .items {
  flex: 50%;
}

body.subpage main .container {
  display: flex;
}

body.subpage main .container #lnb {
  flex: 230px;
  flex-shrink: 0;
  flex-grow: 0;
  box-sizing: border-box;
  padding-right: 50px;
}

body.subpage main .container #lnb ul li {
  border-bottom: 1px solid tomato;
}

body.subpage main .container #lnb ul li a {
  display: inline-block;
  width: 100%;
  height: 100%;
  line-height: 50px;
  font-size: 18px;
  box-sizing: border-box;
  transition: 0.5s;
}

body.subpage main .container #lnb ul li a:hover {
  padding-left: 20px;
}

body.subpage main .container #lnb ul li a.on {
  color: white;
  background: tomato;
  padding-left: 20px;
}

body.subpage main .container .sub-title+.inner .tbl-header {
  margin-top: 50px;
}

body.subpage main .container .sub-title span {
  position: relative;
  display: inline-block;
  padding-bottom: 8px;
  line-height: 43px;
}

body.subpage main .container .sub-title span:after {
  content: "";
  position: absolute;
  height: 3px;
  background: tomato;
  bottom: 0;
  left: 0;
  right: 0;
}

body.subpage main .container .inner+.inner {
  margin-top: 50px;
  padding-top: 50px;
}

body.subpage main .container .inner .box {
  flex-wrap: wrap;
}
</style>
</head>
<body>
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
            <li><a href="./artists/artists.html">Artists</a></li>
            <li><a href="./gallerys/gallerys.html">Gallerys</a></li>
            <li><a href="./exhibitions/exhibitions.html">Exhibitions</a></li>
            <li><a href="./storage/storage.html">Storage</a></li>
            <li><a href="./notice/notice.html">Notice</a></li>
          </ul>
          <ul class="side_menu">
            <li><a href="#"><img class="top-img" src="./img/find.png"></a></li>
            <li><a href="#"><img class="top-img" src="./img/mypage.png"></a></li>
            <li><a href="#"><img class="top-img" src="./img/like.png"></a></li>
            <li><a href="#"><img class="top-img" src="./img/cart.png"></a></li>
          </ul>
        </nav>
      </div>
    </header>
    <div class="title">
      <h1>내 정보 보기 </h1>
    </div>
    <ul>
    		<c:forEach var="test" items="${userList}">
    			<c:if test="${test.userId == userId }">
					<li>아이디 : ${test.userId}</li>
					<li>비밀번호 : ${test.passwd}</li>
					<li>이름 : ${test.koreanName}</li>
					<li>영어성명 : ${test.englishName}</li>
					<li>생년월일 : ${test.ssn}</li>
					<li>최종 학력 : ${test.acaBackGround}</li>
					<li>확과 : ${test.major}</li>
					<li>경력연도 : ${test.careerYear}</li>
					<li>경력사항 : ${test.careerType}</li>
					<li>갤러리 소속 여부 : ${test.company}</li>
					<li>포트폴리오 : ${test.portpolio}</li>
					<li>메인장르 : ${test.mainGenre}</li>
					<li>작품 평균 판매가 : ${test.priceAvg}</li>
					<li>지난 1년간 작품 판매 횟수 : ${test.salesRate}</li>
					<li>대표작품 : ${test.mainArtwork}</li>
					<li>전화번호 : ${test.phoneNumber}</li>
					<li>이메일 : ${test.email}</li>
					<li>SNS : ${test.sns}</li>
				</c:if>			
			</c:forEach>
    </ul>
  	</div>
  
</body>
</html>