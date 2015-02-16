<head>
<g:javascript src="jquery-1.11.1.min.js"></g:javascript>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir:'bootstrap/css', file:'style.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir:'bootstrap/css', file:'bootstrap.min.css')}" />
<link rel="stylesheet"
	href="${resource(dir:'bootstrap/font-awesome/css', file:'font-awesome.min.css')}" />
<!-- para que no se pixelen los iconos -->
<meta name="viewport" content="width=device-width, initial-escale=1.0" />
<!-- para que sirva el responsive en todos los dispositivos -->
<title>Login</title>
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${resource(dir:'bootstrap/ico', file:'apple-touch-icon-144-precomposed.png')}" />
<!-- para las imagenes iconos -->
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${resource(dir:'bootstrap/ico', file:'apple-touch-icon-114-precomposed.png')}" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${resource(dir:'bootstrap/ico', file:'apple-touch-icon-72-precomposed.png')}" />
<link rel="apple-touch-icon-precomposed"
	href="${resource(dir:'bootstrap/ico', file:'apple-touch-icon-57-precomposed.png')}" />
<link rel="shortcut icon"
	href="${resource(dir:'bootstrap/ico', file:'favicon.png')}" />

</head>
<style type="text/css">
.panel-default {
	opacity: 0.85;
	margin-top: 10%;
}

.form-group.last {
	margin-bottom: 0px;
}
</style>

<script type='text/javascript' src="bootstrap/js/bootstrap.min.js"></script>

<body class="withBack">

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default" style="border-radius: 2em;">
					<div class="panel-heading"
						style="border-top-left-radius: 2em; border-top-right-radius: 2em;">
						<strong class="">LOGIN</strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form" id="form1">
							<div class="form-group">

								<div class="col-sm-9">
									<input type="email" class="form-control" id="inputEmail"
										style="border-radius: 0; border-top-right-radius: 2em; height: 50px;"
										placeholder="CORREO ELECTRÓNICO" required=""
										oninvalid="setCustomValidity(modificarMensajeEmail())"
										onkeydown="setCustomValidity(modificarMensajeEmail())"
										onkeyup="setCustomValidity(modificarMensajeEmail())">
									<input type="password" class="form-control" id="inputPassword"
										style="border-radius: 0; border-bottom-left-radius: 2em; height: 50px; margin-top: 0px;"
										placeholder="CONTRASEÑA"
										oninvalid="setCustomValidity('La contraseña es obligatoria ')"
										onkeydown="try{setCustomValidity('')}catch(e){}"
										onkeyUp="try{setCustomValidity('')}catch(e){}" required="">
								</div>
							</div>
							<div id="alertError" class="row alert alert-danger"
								style="margin-left: 3%; margin-right: 15%; color: red; display: none">El
								correo electrónico o la contraseña que ingresaste son
								incorrectos.</div>
							<div class="form-group last" style="margin-left: 10px;">
								<button type="submit" class="btn btn-success btn-sm">ACEPTAR
									&raquo;</button>
								<button id="cleanButton" type="reset" class="btn btn-default btn-sm">LIMPIAR</button>
							</div>
						</form>
					</div>
					<div class="panel-footer"
						style="border-bottom-left-radius: 2em; border-bottom-right-radius: 2em;">
						¿No estás registrado?
						<g:link controller="User" action="renderSignUp">Regístrate aquí!</g:link>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script type='text/javascript'>
		$("#form1")
				.submit(
						function(e) {
							var myUrl = document.URL.substring(0, document.URL
									.indexOf('trainSystem/') + 11)
									+ '/user/logIn';
							var mail = document.getElementById('inputEmail').value
							var password = document
									.getElementById('inputPassword').value
							jQuery
									.ajax({
										type : 'POST',
										data : {
											"mail" : mail,
											"password" : password
										},
										url : myUrl,
										success : function(data, textStatus) {
											if (data === 'error de autenticacion') {
												document
														.getElementById("alertError").style.display = "block"
											} else {
												location.reload();
											}

										},
										error : function(XMLHttpRequest,
												textStatus, errorThrown, data) {
										}
									});
							e.preventDefault()
						});

		$("#inputEmail").keypress(function(e) {

			document.getElementById("alertError").style.display = "none"
		});

		$(document).ready(function() {

		});
		$("#inputPassword").keypress(function(e) {

			document.getElementById("alertError").style.display = "none"
		});
		$("#cleanButton").click(function(e) {

			document.getElementById("alertError").style.display = "none"
		});

		$(document).ready(function() {

		});

		function modificarMensajeEmail() {
			var email = document.getElementById('inputEmail');
			if (email.value == '') {
				return 'El correo electrónico es obligatorio'
			} else if (email.validity.typeMismatch) {
				return 'por favor ingrese un correo electrónico válido'
			}

			return '';
		}
	</script>
</body>
<g:render template='footer' />