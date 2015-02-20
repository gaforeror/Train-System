<head>

<g:javascript src="jquery-1.11.1.min.js"></g:javascript>
<g:javascript src="signUp.js"></g:javascript>
<!-- para que sirva el captcha -->
<g:javascript src="jquery-1.3.2.js" />
<g:javascript src="ui.core.js" />
<g:javascript src="ui.sortable.js" />



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir:'css', file:'captcha.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir:'bootstrap/css', file:'style.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir:'bootstrap/css', file:'bootstrap.min.css')}" />
<link rel="stylesheet"
	href="${resource(dir:'bootstrap/font-awesome/css', file:'font-awesome.min.css')}" />
<!-- para que no se pixelen los iconos -->
<meta name="viewport" content="width=device-width, initial-escale=1.0" />
<!-- para que sirva el responsive en todos los dispositivos -->
<title>Sign up</title>
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
	margin-top: 5%;
        background-color: black;
}

.form-group.last {
	margin-bottom: 0px;
	margin-left: 10px;
	margin-top: 10px;
}
</style>

<script type='text/javascript' src="bootstrap/js/bootstrap.min.js"></script>
<body class="withBack">
	<div class="row-fluid">
		<div class="container">
			<div class="row-fluid">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default" style="border-radius: 2em;">
						<div class="panel-heading"
							style="border-top-left-radius: 2em; border-top-right- background-color: blacradius: 2em;">
							<strong class="">REGISTRO</strong>
						</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="form1">
								<div class="form-group">

									<div class="col-sm-9">
										<input type="text" class="form-control" id="inputFirstname"
											placeholder="NOMBRE" required
											style="border-radius: 0; border-top-left-radius: 2em; height: 50px; margin-top: 0px"
											oninvalid="setCustomValidity('Este campo es obligatorio ')"
											maxlength="50" size="50"
											onkeydown="try{setCustomValidity('')}catch(e){}"
											onkeyUp="try{setCustomValidity('')}catch(e){}"> 
                                                                                        <input type="text" class="form-control" id="inputLastname"
											placeholder="APELLIDOS" required
											style="border-radius: 0; height: 50px; margin-top: 0px"
											oninvalid="setCustomValidity('Este campo es obligatorio ')"
											maxlength="50" size="50"
											onkeydown="try{setCustomValidity('')}catch(e){}"
											onkeyUp="try{setCustomValidity('')}catch(e){}">                                                                                        
                                                                                        <input
											type="email" class="form-control" id="inputEmail"
											placeholder="CORREO ELECTRÓNICO" required=""
											style="border-radius: 0; height: 50px; margin-top: 0px"
											maxlength="50" size="50"
											oninvalid="setCustomValidity(modificarMensajeEmail())"
											onkeydown="setCustomValidity(modificarMensajeEmail())"
											onkeyup="setCustomValidity(modificarMensajeEmail())">

										<input type="password" class="form-control" id="inputPassword"
											placeholder="CONTRASEÑA" required
											oninvalid="setCustomValidity('La contraseña es obligatoria ')"
											onkeydown="try{setCustomValidity('')}catch(e){}"
											onkeyUp="try{setCustomValidity('')}catch(e){}" maxlength="50"
											size="50"
											style="border-radius: 0; height: 50px; margin-top: 0px">

										<input type="password" class="form-control"
											id="inputPasswordConfirm" placeholder="CONFIRMAR CONTRASEÑA"
											oninvalid="setCustomValidity(modificarMensajePasswordConfirm())"
											onkeydown="setCustomValidity(modificarMensajePasswordConfirm())"
											maxlength="50" size="50"
											onkeyup="setCustomValidity(modificarMensajePasswordConfirm())"
											required=""
											style="border-radius: 0; border-bottom-right-radius: 2em; height: 50px; margin-top: 0px">
									</div>
								</div>


								<div style="margin-right: 30%;">
									<div class="captcha_wrap" style="background-color: black" >
										<div class="captcha" style="background-color: black">Arrastre para ordenar</div>
										<ul id="sortable"
											onmouseup='document.getElementById("alertCaptcha").style.display = "none"'>
											<li class="captchaItem">1</li>
											<li class="captchaItem">2</li>
											<li class="captchaItem">3</li>
											<li class="captchaItem">4</li>
											<li class="captchaItem">5</li>
											<li class="captchaItem">6</li>
										</ul>
									</div>
								</div>
								<div class="span12">&nbsp;</div>
								<div id="alertCaptcha" class="span120 alert alert-danger"
									style="color: red; display: none">Debes ordenar bien los
									números</div>
								<div id="alertEmail" class="span120 alert alert-danger"
									style="color: red; display: none">Ya existe un usuario asociado al correo electrónico, prueba con otro.</div>
								<div class="form-group last">
									<button id="submit" type="submit"
										class="btn btn-success btn-sm">REGISTRARSE &raquo;</button>
									<button id="cleanButton" type="reset" class="btn btn-default btn-sm">LIMPIAR</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>



	<script type="text/javascript">
		(function($) {

			$.fn.shuffle = function() {
				return this.each(function() {
					var items = $(this).children();

					return (items.length) ? $(this).html(
							$.shuffle(items, $(this))) : this;
				});
			}

			$.fn.validate = function() {
				var res = false;
				this
						.each(function() {
							var arr = $(this).children();
							res = ((arr[0].innerHTML == "1")
									&& (arr[1].innerHTML == "2")
									&& (arr[2].innerHTML == "3")
									&& (arr[3].innerHTML == "4")
									&& (arr[4].innerHTML == "5") && (arr[5].innerHTML == "6"));
						});
				return res;
			}

			$.shuffle = function(arr, obj) {
				for (var j, x, i = arr.length; i; j = parseInt(Math.random()
						* i), x = arr[--i], arr[i] = arr[j], arr[j] = x)
					;
				if (arr[0].innerHTML == "1")
					obj.html($.shuffle(arr, obj))
				else
					return arr;
			}

		})(jQuery);

		$(function() {
			$("#sortable").sortable();
			$("#sortable").disableSelection();
			$("#sortable").shuffle();

		});

		$("#form1").submit(function(e){
			var accepted = ($("#sortable").validate());
			if (!accepted) {
				$("#sortable").sortable();
				$("#sortable").disableSelection();
				$("#sortable").shuffle();
				document.getElementById("alertCaptcha").style.display = "block"
				e.preventDefault();
			} else {
				signUp();
				e.preventDefault();

			}
		});

		$("#inputFirstname").keypress(function(e) {

			if ($("#inputFirstname").val().length > 0)
				return e.keyCode
			else
				return e.keyCode != 32
		});

		$("#inputPassword").keypress(function(e) {

			if ($("#inputPassword").val().length > 0)
				return e.keyCode
			else
				return e.keyCode != 32
		});

		$("#inputEmail").keypress(function(e) {

			document.getElementById("alertEmail").style.display = "none"
			if ($("#inputEmail").val().length > 0)
				return e.keyCode
			else
				return e.keyCode != 32
		});

		$("#inputPasswordConfirm").keypress(function(e) {

			if ($("#inputPasswordConfirm").val().length > 0)
				return e.keyCode
			else
				return e.keyCode != 32
		});


		$("#cleanButton").click(function(e){

			document.getElementById("alertCaptcha").style.display = "none"
			});
		
		$(document).ready(function() {

		});
	</script>


</body>
<g:render template='footer' />

