<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
		파일 : <input type="file" name="file"><br>
		<input type="submit" value="업로드"><br>
	</form>
	
	<% 
		 String uploadDir =this.getClass().getResource("").getPath();
		 uploadDir = uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"\\medici\\src\\main\\webapp\\WebContent\\uploadImage/";
		 out.println("절대경로 : " + uploadDir + "<br/>"); 
		 
		 String imgFile = uploadDir + "신분증(갱신용).PNG";
		 out.println("이미지파일 경로 : " + imgFile + "<br/>");
		 
		 String imgFile2 = uploadDir + "신분증(갱신용).PNG";
		 out.println("이미지파일 경로 : " + imgFile2 + "<br/>"); 
		 
		 String imgFile4 = "./uploadImage/신분증(갱신용).PNG";
	%>
		<img src="<%=imgFile%>" width="300px" height="300px"></img>	
		<img src="<%=imgFile2%>" width="300px" height="300px"></img>
		<img src="<%=imgFile4%>" width="300px" height="300px"></img>

</body>
</html>
