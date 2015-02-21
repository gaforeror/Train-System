<footer style="position: absolute; top: 3px; right: 3px;">
    <g:if test="${session?.user}">
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button"
			id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="color: white; background: rgba(0,0,0,0.4); border: 0;" >
			 <i class="glyphicon  icon-white icon-user"></i> BIENVENIDO, ${session.user.firstname.toUpperCase()}   <!--<i class="glyphicon  icon-white icon-chevron-down"></i>-->			
		</button>
		<!--<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="color: white; background: rgba(0,0,0,0.4); margin-right:0px;" >
			<g:link controller="User" action="logOut"style="color: white; background: rgba(0,0,0,0); " > <i class="glyphicon  icon-white icon-share"></i> SALIR</g:link>
		</ul>-->
	</div>
    </g:if>
    <g:else>
        <div style="position: relative; top: 30px; right: 30px;">
        <g:link controller="User" action="renderLogin"><button type="button" class="btn btn-default btn-sm">INGRESAR</button></g:link>
        <g:link controller="User" action="renderSignUp"><button type="submit" class="btn btn-primary btn-sm">REGISTRARSE</button></g:link>                         
        </div>
    </g:else>

</footer>