<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.center_div{
    margin: 0 auto;
    width:80% /* value of your choice which suits your alignment */
}
</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Página de login Contatos</title>
</head>
<body>
<div class="container center_div">

	<h2>Página de login dos contatos</h2>
	<form action="efetuaLogin" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Login: </label>
			<input type="text" name="login" class="form-control" aria-describedby="emailHelp"/>
			<small id="emailHelp" class="form-text text-muted">Lembre-se de não compartilhar seu email e senha com ninguém.</small>
		</div>
	
		<div class="form-group">
		
			<label for="exampleInputPassword1">Senha</label>
			<input type="password" name="senha" class="form-control"/> <br /> <br />
			<button type="submit" class="btn btn-primary">Entrar</button> 
		</div>
	</form>
</div>	
</body>
</html>