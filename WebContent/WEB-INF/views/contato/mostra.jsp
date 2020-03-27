<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Contato</title>
</head>
<body>
	<h3>Alterar contato - ${contatos.id}</h3>
	<form action="alteraContato" method="POST">
		<input type="hidden" name="id" value="${contatos.id}" />
		Nome:
		<input type="text" name="nome" value="${contatos.nome}" /> <br>
		Email:
		<input type="text" name="email" value="${contatos.email}" /> <br>
		Endereco:
		<input type="text" name="endereco" value="${contatos.endereco}" /> <br>
		Data de nascimento:
		<input type="text" name="dataNascimento" value="<fmt:formatDate value="${contatos.dataNascimento.time}" pattern="dd/MM/yyyy" />" />
		<br>
		
		<input type="submit" value="Alterar">
	</form>
</body>
</html>