<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Contato</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<h3>Alterar contato - ${contatos.id}</h3>
	
	
	<form action="alteraContato" method="POST">
		<input type="hidden" name="id" value="${contatos.id}" />
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="nome">Nome:</label>
				<input type="text" class="form-control" id="nome" name="nome" value="${contatos.nome}" />
			</div>
			<div class="form-group col-md-6">
				<label for="email">Email:</label>
				<input type="text" class="form-control" id="email" name="email" value="${contatos.email}" />
			</div>
			<div class="form-group col-md-6">
				<label for="edereco">Endereco:</label>
				<input type="text" class="form-control" id="email" name="endereco" value="${contatos.endereco}" />
			</div>
			<div class="form-group col-md-6">
				<label for="dataNascimento">Data de nascimento:</label>
				<input type="text" class="form-control" id="dataNacimento" name="dataNascimento" 
				value="<fmt:formatDate value="${contatos.dataNascimento.time}" 
				pattern="dd/MM/yyyy" />" />
			</div>
		</div>
		
		<div class="form-group text-center">
			<button type="submit" class="btn btn-primary">Gravar</button>
		 	<a href="listaContato" class="btn btn-danger">Cacenlar</a>
		</div>
	</form>
</body>
</html>