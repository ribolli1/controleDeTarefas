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
	<div style="margin-top: 50px"
		class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="panel-title">Cadastro</div>
				<div
					style="float: right; font-size: 85%; position: relative; top: -10px">
					<a id="signinlink" href="loginForm"
						onclick="$('#signupbox').hide(); $('#loginbox').show()">Login</a>
				</div>
			</div>
			<div class="panel-body">
				<form action="adicionaUsuario" method="post" id="signupform"
					class="form-horizontal" role="form">
					<div id="signupalert" style="display: none"
						class="alert alert-danger">
						<p>Error:</p>
						<span></span>
					</div>
					<div class="form-group">
						<label for="email" class="col-md-3 control-label">Login</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="login"
								placeholder="Login" required>
						</div>
					</div>

					<div class="form-group">
						<label for="firstname" class="col-md-3 control-label">Nome</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="nome"
								placeholder="Nome ou apelido" required>
						</div>
					</div>
					<div class="form-group">
						<label for="lastname" class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="email"
								placeholder="Email" required>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-md-3 control-label">Password</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="senha"
								placeholder="Senha" required>
						</div>
					</div>
					<div class="form-group">
						<!-- Button -->
						<div class="col-md-offset-3 col-md-9">
							<button type="submit" id="btn-signup" type="button"
								class="btn btn-info">
								<i class="icon-hand-right"></i>Cadastrar
							</button>
							<span style="margin-left: 8px;"></span>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>