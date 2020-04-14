<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/login.css" media="screen" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Página de login Contatos</title>
</head>
<body>

<div id="login">
	<h2 class="text-center text-white pt-5">Sistema de cadastro de contatos</h2>
	<div class="container">
		<div id="login-row" class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
					<form id="login-form" action="efetuaLogin" method="post">
						<h3 class="text-center text-info">Login</h3>
						<div class="form-group">
							<label for="login" class="text-info">Usuário:</label><br>
							<input type="text" name="login" id="login" class="form-control">
						</div>
						<div class="form-group">
							<label for="senha" class="text-info">Senha:</label><br>
							<input type="password" name="senha" id="senha" class="form-control">
						</div>
						<div class="form-group">
							<a href="cadastroUsuario" class="text-info">Cadastrar</a><br>
						</div>
						<div class="form-group text-center">
							<input type="submit" name="submit" class="btn btn-info btn-md" value="Entrar" >
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</div>
</div>




</body>
</html>