<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="resources/js/sidebar.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/sidebar.css" media="screen" />

<style type="text/css">
th{
	color: white;
}
</style>

<meta charset="UTF-8">
<title>Lista de contatos</title>
</head>
<body>
<c:import url="../cabecalho.jsp"></c:import>
	<div id="mySidebar" class="sidebar">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
	  <a href="#">${usuarioLogado.login}</a>
	  <a href="#">#</a>
	  <a href="#">#</a>
	  <a href="#">Sobre</a>
	</div>
	
<div id="main">	   
<br><br>

	<a href="telaAddContato">Novo contato</a>
	<br><br>
	
	<table border="1">
		<tr bgcolor="#1556d6">
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereco</th>
			<th>Data de Nascimento</th>
			<th colspan="2">Ações</th>
		</tr>
		<c:forEach items="${contatos}" var="contato" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? '87aefa' : 'ffffff'}">
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td>${contato.email}</td>
				<td>${contato.endereco}</td>
				<td>
					<fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" />
				</td>
				<td><a href="removeContato?id=${contato.id}">Remover</a></td>
				<td><a href="mostraContato?id=${contato.id}">Alterar</a></td>
				
			</tr>
		</c:forEach>
	</table>
	</div>
	<br>
	<c:import url="../rodape.jsp"></c:import>
	
	
</body>
</html>