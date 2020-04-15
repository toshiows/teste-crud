<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="POST" action="<c:url value='/upload' />"
    enctype="multipart/form-data">

    Sua Imagem: <input type="file" name="file" />
    <input type="submit" value="upload" name="upload"/>

</form>
</body>
</html>