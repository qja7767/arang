<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.arang.medici.file.dao.fileDao" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<%
  	 	 String uploadDir =this.getClass().getResource("").getPath();
		 uploadDir = uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"\\medici\\src\\main\\webapp\\WebContent\\uploadImage/";
		 out.println("절대경로 : " + uploadDir + "<br/>"); 

		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";

		MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding, new DefaultFileRenamePolicy());

		String fileName = multipartRequest.getOriginalFileName("file");

		String fileRealName = multipartRequest.getFilesystemName("file");

		new fileDao().upload(fileName, fileRealName);
		out.write("파일명 : " + fileName + "<br>");
		out.write("실제파일명 : " + fileRealName + "<br>");
	%>
</body>
</html>