<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
a:link, a:visited {
  background-color: #39add4;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #218aad;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	
	<h2>Bem vindo, ${usuarioLogado.login}!</h2>
	<a href="listaContato">Lista de contatos</a>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>