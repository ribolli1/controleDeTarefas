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
<link href="css/styles.css" type="text/css" rel="stylesheet">

</head>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<body>



	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<h1 class="text-center login-title">Alterar tarefa ${tarefa.id}</h1>
				<div class="account-wall">
					<img class="profile-img"
						src="http://fotolivre.freehostia.com/design/tarefa.jpg" alt="">
						
					<form:errors path="tarefa.descricao" cssStyle="color:red" />
					<form class="form-signin" action="alteraTarefa" method="post">
						
						<input type="hidden" name="id" value="${tarefa.id}" />
						
						<h3>Descrição</h3>
						<textarea name="descricao" class="form-control" rows="3">${tarefa.descricao}
					    </textarea>
					    
						<label> <input type="checkbox" name="finalizado"
							value="true" ${tarefa.finalizado? 'checked' : '' }>
							Finalizado<br>
							
						</label> <input type="text" class="pull-right"
							placeholder="Finalizado em: dd/mm/yyyy" name="dataFinalizacao"
							value="<fmt:formatDate
							value="${tarefa.dataFinalizacao.time}"
							pattern="dd/MM/yyyy" />" />
							
						<button class="btn btn-lg btn-warning btn-block" type="submit"
							value="Adicionar">Alterar Tarefa</button>
						<label class="checkbox pull-left"> </label> <a href="#"
							class="pull-right need-help">Ajuda? </a><span class="clearfix"></span>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>


</html>