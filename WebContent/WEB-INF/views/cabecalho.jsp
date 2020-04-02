<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.js" media="screen" />
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/sidebar.js"></script>
</head>
<body>

<nav class="navbar-expand-lg navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="listaContato">CRUDClientes</a>
		</div>
		
		
		 <ul class="nav navbar-nav">
      <li class="active"><button class="openbtn" onclick="openNav()">☰</button></li>
    </ul>
		
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		</ul>
	</div>

</nav>