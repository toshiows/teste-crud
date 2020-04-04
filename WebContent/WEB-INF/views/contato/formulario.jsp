<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Adicionar novo Contato</title>
</head>
<body>
	<h2 class="text-center text-white pt-5">Cadastrar contato</h2>

	<form action="adicionaContato" method="POST">
		<div class="form-group">
			<label for="nome">Nome:</label>
			<input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome completo" />
		</div>
		<div class="form-group">
			<label for="email">E-mail:</label>
			<input type="text" class="form-control" id="email" name="email" />
		</div>
		<div class="form-group">
			<label for="endereco">Endereço:</label>
			<input type="text" class="form-control" id="endereco" name="endereco" />
		</div>
		 <div class="form-group">
		 	<label for="dataNascimento">Data Nascimento:</label>
		 	<input type="text" class="form-control" id="dataNascimento" name="dataNascimento" /> <br />
		 </div>
		 
		 <div class="form-group text-center">
		 	<button type="submit" class="btn btn-primary">Gravar</button>
		 	<a href="listaContato" class="btn btn-danger">Cacenlar</a>
		 </div>
		 
	</form>

	


	<c:import url="../rodape.jsp"></c:import>
</body>
</html>