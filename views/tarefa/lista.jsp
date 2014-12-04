<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Projeto pessoal Filipe Santiago Ribolli">
<meta name="author" content="Filipe Santiago Ribolli">
<link rel="icon" href="img/logos/favicon.jpg">

<title>Filipe S. Ribolli</title>

<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">



</head>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<body>

	<a href="novaTarefa">
		<button class="btn btn-lg btn-success btn-block">Adicionar
			Tarefa</button></a>
	
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Navegar Toogle*</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="index.jsp">Filipe
					Santiago Ribolli ©</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">

					<li><a>Bem vindo, ${usuarioLogado.login}</a></li>
					<li><a href="novaTarefa"><b>Adicionar Tarefa</b></a></li>
					<li><a href="logout"><b>Logout</b></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<table class="table table-striped table-hover table-condensed">
		<thead>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado ?</th>
			<th>Data de Finalização</th>
			<th>Data de Cadastro</th>
			<th></th>
			<th></th>
		</thead>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td>Não finalizado</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><fmt:formatDate value="${tarefa.dataCadastro.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="removeTarefa?id=${tarefa.id}">
						<button class="btn btn-lg btn-danger btn-block btn-sm">Remover</button>
				</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}">
						<button class="btn btn-lg btn-warning btn-block btn-sm">Alterar
							/ Finalizar</button>
				</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>