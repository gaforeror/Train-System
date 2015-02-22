function signUp(){
	var firstname = document.getElementById('inputFirstname').value
        var lastname = document.getElementById('inputLastname').value
	var mail = document.getElementById('inputEmail').value
	var password = document.getElementById('inputPassword').value
        
	jQuery.ajax({
		type : 'POST',
		data : {
			"firstname" : firstname,
                        "lastname" : lastname,
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

function modificarMensajePassword() {
	var pass =  document.getElementById('inputPassword');
	if (pass.value == '') {
            return 'La contraseña es obligatoria' 
        }
        else if (pass.value.length < 7){
         return 'La contraseña no puede tener menos de 7 caracteres'
        }
        else if (pass.value.length > 15){
         return 'La contraseña no puede tener más de 15 caracteres'
        }
    
       return '';
}



