<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Cadastrar contato</h3>

<form action="adicionaContato" method="POST">
	Nome: <input type="text" name="nome" /> <br />
	E-mail: <input type="text" name="email" /> <br />
	Endereço: <input type="text" name="endereco" /> <br />
	Data Nascimento: <input type="text" name="dataNascimento" /> <br />
	
	<input type="submit" value="Gravar" />
</form>

<br><br><br>

<a href="listaContato">Voltar <</a>
</body>
</html>