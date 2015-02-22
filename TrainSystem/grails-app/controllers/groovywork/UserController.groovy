package groovywork

import grails.converters.JSON

import org.apache.commons.codec.binary.Base64;

import trainSystem.User;

class UserController {



	def renderLogin(){

		if(!session["user"])
			render( view: "login")
		else
			redirect(action:"renderIndex")
	}
	def renderSignUp(){
		if(!session["user"])
			render( view: "signUp")
		else
			redirect(action:"renderIndex")
	}
	def renderIndex(){
		render( view: "index")
		
	}

	def loadUsers(){
		render User.listOrderById() as JSON
	}

	def logIn(){
		def user = User.findByEmail(params.mail)
		if(!user.is(null)){

			if(checkPassword(params.password, params.mail)) {
				session["user"] = user
				render "usuario correcto, redireccionando"
			}
			else{
				render "error de autenticacion"
			}
		}
		else{
			render "error de autenticacion"
		}
	}

	def signUp(){                
		def user = User.findByEmail(params.mail)
		if (user) {
			render "Usuario ya existe"
		}
		else {
			// Create user
			user = new User(
					firstname: params.firstname,
					passwordHash: User.sha256(params.password),
					email:params.mail,
                                        lastname:params.lastname,
                                        role: new String("undefined"),
                                        documentNumber: new String("undefined")
					)

			user.save(flush:true)
			session["user"] = user
			redirect(action: "renderIndex" )
		}
	}



	def logOut(){
		session.invalidate()
		redirect(action: "renderLogin" )
	}

	boolean checkPassword( password, mail) {
		def passwordHash = User.findByEmail(mail).passwordHash
		return passwordHash.equals(User.sha256(password))
	}
        
    	def renderUserList(){

		if(!session["user"]){
			redirect(action:"renderLogin")
		}
		else{
			
			def user = (User)session["user"]
			render( view: "userList", model : [ username :
				user.firstname.toUpperCase() ] )
		}
	}

	def index() {
	}
        
    	def userList() {
	}
}
