<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
				<h1 class="text-center login-title">Cadastre uma tarefa</h1>
				<div class="account-wall">
					<img class="profile-img"
						src="http://fotolivre.freehostia.com/design/tarefa.jpg" alt="">
					<form:errors path="tarefa.descricao" cssStyle="color:red" />
					<form class="form-signin" action="adicionaTarefa" method="post">
						<textarea name="descricao" class="form-control" rows="3"></textarea>
						<button class="btn btn-lg btn-info btn-block" type="submit"
							value="Adicio">Adicionar Tarefa</button>
						<label class="checkbox pull-left"> </label>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>


</html>