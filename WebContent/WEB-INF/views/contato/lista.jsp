<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="resources/js/sidebar.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/sidebar.css" media="screen" />
 
 
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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


	<a class="btn btn-info" href="telaAddContato">＋ Novo contato</a>
	<br><br>
	
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Nome</th>
				<th scope="col">Email</th>
				<th scope="col">Endereço</th>
				<th scope="col">Data de Nascimento</th>
				<th scope="col" colspan="2" class="text-center">Ações</th>
			</tr>
		<c:forEach items="${contatos}" var="contato" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'f2f4f7' : 'ffffff'}">
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td>${contato.email}</td>
				<td>${contato.endereco}</td>
				<td>
					<fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" />
				</td>
				<td class="text-center" ><a href="removeContato?id=${contato.id}"><i class="material-icons">&#xE872;</i></a></td>
				<td class="text-center" ><a href="mostraContato?id=${contato.id}"><i class="material-icons">&#xE254;</i></a></td>
				</tr>
		</c:forEach>
	</table>
	</div>
	<br>
	<c:import url="../rodape.jsp"></c:import>
	
</body>
</html>