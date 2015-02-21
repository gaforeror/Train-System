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
<title>Inicio</title>
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
<g:render template='navBar' />
<body class="withBack">  
    <div class="container">
       <div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary" style="border-radius: 2em; position: relative; top: 100px;">
					<div class="panel-heading"
						style="border-top-left-radius: 2em; border-top-right-radius: 2em; ">
                                                <strong><h1><p class="text-center">SISTEMA DE INFORMACIÓN DE TRENES</h1></p></strong>
					</div>
					<div class="panel-body">
                                               <p>El sistema de información de la central de trenes permitira a los usuarios crear una sesión de usuario, comprar, modificar y consultar tiquetes para viajar en tren.</p>                                         
					</div>
					</div>      
    </div>

  </body>
  
<g:render template='footer' />