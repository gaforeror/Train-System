

<footer style="position: absolute; top: 3px; right: 3px;">

	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button"
			id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="color: white; background: rgba(0,0,0,0.4); border: 0;" >
			 <i class="glyphicon  icon-white icon-user"></i> BIENVENIDO, ${username}   <i class="glyphicon  icon-white icon-chevron-down"></i>
			
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="color: white; background: rgba(0,0,0,0.4); margin-right:0px;" >
			<g:link controller="User" action="logOut"style="color: white; background: rgba(0,0,0,0); " > <i class="glyphicon  icon-white icon-share"></i> SALIR</g:link>
		</ul>
	</div>

</footer>