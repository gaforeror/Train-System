<head>
<g:javascript src="jquery-1.11.1.min.js"></g:javascript>
<g:javascript src="bootstrap.min.js"></g:javascript>
<g:javascript src="userList.js" />
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
	margin-top: 30%;
}

.form-group.last {
	margin-bottom: 0px;
}

</style>
<g:render template='navBar' />

<body class="withBack">
<h1 style ="color:rgb(0,0,0); margin-left:11%"><b>LISTA DE USUARIOS</b></h1>
	<table class="table-bordered table-striped table-hover "
				id="userList" style="margin-left: 10%; margin-top:5%; min-width: 700px;">
				<tr>
                                        <th>id</th>
					<th>Nombre</th>
                                        <th>Apellidos</th>
					<th>Email</th>
					<th>Contraseña encriptada</th>
                                        <th>Fecha de nacimiento</th>
                                        <th>Tipo de documento</th>
                                        <th>Numero de documento</th>
                                        <th>Rol</th>
                                        
				</tr>
				<script>
					loadUsers()
				</script>

			</table>
</body>
<g:render template='footer' />

