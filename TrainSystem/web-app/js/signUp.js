function signUp(){
	var name = document.getElementById('inputName').value
	var mail = document.getElementById('inputEmail').value
	var password = document.getElementById('inputPassword').value
	jQuery.ajax({
		type : 'POST',
		data : {
			"name" : name,
			"mail" : mail,
			"password" : password,
		},
		url : "signUp",
		success : function(data, textStatus) {
			
			if(data === 'Usuario ya existe')
				document.getElementById("alertEmail").style.display = "block"
			else
				location.reload();
		},
		error : function(XMLHttpRequest, textStatus, errorThrown, data) {
			

		}
	});
}

function modificarMensajeEmail() {
	var email =  document.getElementById('inputEmail');
	if (email.value == '') {
        return 'El correo electrónico es obligatorio'
    }
    else if (email.validity.typeMismatch){
        return 'por favor ingrese un correo electrónico válido'
    }
    
       return '';
}

function modificarMensajePasswordConfirm() {
	var passConfirm =  document.getElementById('inputPasswordConfirm');
	var pass =  document.getElementById('inputPassword');
	if (passConfirm.value == pass.value) {
        return ''
    }
    
        return 'Las contraseñas no coinciden'
}



