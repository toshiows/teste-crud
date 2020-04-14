<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="<c:url value='/upload' />" enctype="multipart/form-data">
	Foto: <input name="upload" type="file">
	<button type="submit" value="upload">Enviar</button>
</form>
</body>
</html>