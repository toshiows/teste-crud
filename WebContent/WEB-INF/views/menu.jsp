<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#buttonAcesso {
  background-color: #39add4;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;

}

  #buttonAcesso:hover, #buttonAcesso:active {
  background-color: #218aad;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	
	<h2>Bem vindo, ${usuarioLogado.login}!</h2>
	<a href="listaContato" id="buttonAcesso">Lista de contatos</a>
	<br><br>
	<a href="logout">Logout</a>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>