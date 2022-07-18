<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>DeleteUser</title>
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
.delete_wrapper {
text-align: center;
margin-top: 300px;
}

.delete_wrapper p {
font-size: 32px;
}



p:nth-child(4) {
	margin-top: 50px;
	margin-bottom: 30px;
	font-size: 18px;
}
</style>
</head>
<body>
<div class="delete_wrapper">
<form action="delete_user.do" method="get">
<p>정말 탈퇴하시겠습니까?</p>
<p>탈퇴를 위해서 본인의 아이디를 아래에 칸에 입력해주세요.</p>
<p>삭제할 ID : <input type="text" name="userId"/></p>
<button type="submit" class="gbtn normal gray"><a href='<c:url value="/signup/logout"/>'>회원탈퇴</a></button>
</form>
<button class="gbtn normal gray"><a href='<c:url value="/signup/mypage.jsp"/>'>돌아가기</a></button>
</div>
</body>
</html>