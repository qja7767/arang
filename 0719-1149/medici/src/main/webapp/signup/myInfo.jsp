<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="../design/css_add_user/normalize.css">
<link rel="stylesheet" href="../design/css_default/header.css">
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

.table_a {
  table-layout: fixed;
  border-collapse: collapse;
  width: 100%;
  padding-top: 150px;
}

.table_a tr td {
  position: relative;
  border: 1px solid #dddddd;
  border-left: 0;
  border-right: 0;
  padding: 14px 8px 14px;
  font-size: 14px;
}

.table_a td>* {
  float: left;
}

.table_a tr td:nth-child(1) {
  width: 120px;
  padding-left: 20px;
  color: #333333;
}

.table_a td>i {
  margin: 5px 5px 0;
}

.table_a tr td em {
  position: absolute;
  display: inline-block;
  font-size: 8px;
  color: #f82828;
  left: 0;
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
          <a href="/medici/signup/mypage.jsp">ARANG</a>
        </h1>
        <!-- 메인메뉴 -->
        <nav id="top-nav">
          <ul class="center_menu">
            <li><a href="/medici/artists_all.jsp">Artists</a></li>
            <li><a href="/medici/page/gallerys.jsp">Gallerys</a></li>
            <li><a href="/medici/list.do">Exhibitions</a></li>
            <li><a href="/medici/service/storage_service1.jsp">Storage</a></li>
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
        	</c:if>
          </ul>
        </nav>
      </div>
    </header>
    <div class="title">
      <h1>내 정보 보기 </h1>
    </div>
    <c:forEach var="test" items="${userList}">
	    <c:if test="${test.userId==userId}">
      <table class="table_a">
        <tr>
          <td>
            <em>&ast;</em>아이디
          </td>
	      <td>
	        ${test.userId}
	      </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>비밀번호
          </td>
          <td>
            ${test.passwd}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>이름
          </td>
	          <td>
	            ${test.koreanName}
	          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>영문성명
          </td>
          <td>
            ${test.englishName}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>생년월일
          </td>
          <td>
            ${test.ssn}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>최종 학력
          </td>
          <td>
         	 ${test.acaBackGround}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>학과
          </td>
          <td>
            ${test.major}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>경력연도
          </td>
          <td>
            ${test.careerYear}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>경력사항
          </td>
          <td>
            ${test.careerType}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>갤러리 소속 여부
          </td>
          <td>
          ${test.company}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>포트폴리오
          </td>
          <td>
            ${test.portpolio}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>메인장르
          </td>
          <td>
            ${test.mainGenre}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>작품 평균 판매가
          </td>
          <td>
            ${test.priceAvg}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>지난 1년간 작품 판매 횟수
          </td>
          <td>
            ${test.salesRate}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>대표작품 첨부
          </td>
          <td>
            ${test.mainArtwork}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>전화번호
          </td>
          <td>
            ${test.phoneNumber}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>이메일
          </td>
          <td>
            ${test.email}
          </td>
        </tr>
        <tr>
          <td>
            <em>&ast;</em>SNS
          </td>
          <td>
            ${test.sns}
          </td>
        </tr>
      </table>
      </c:if>
   </c:forEach>    

      <div class="button-group">
        <button class="gbtn normal gray"><a href='<c:url value="/signup/myInfoChange.jsp"/>'>수정하기</a></button>
        <button class="gbtn normal gray"><a href='<c:url value="/signup/myInfoChange.jsp"/>'>탈퇴하기</a></button>
      </div>
  </div>
  
</body>
</html>