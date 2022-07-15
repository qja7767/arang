<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>보관서비스 신청 성공!!!</h3>
${wallet.sucessMsg}<br>
결제 후 잔액 : ${wallet.resultBalance}<br>
결제 된 금액 : ${wallet.balance}<br>
선택한 보관장소 : ${artwork.storage}<br>
보관 예약 날짜 : ${artwork.startPeriod} ~ ${artwork.endPeriod}<br>
배송서비스 유/무 : ${artwork.dbService}




</body>
</html>