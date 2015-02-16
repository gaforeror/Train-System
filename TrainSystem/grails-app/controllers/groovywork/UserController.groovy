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

		if(!session["user"]){
			redirect(action:"renderLogin")
		}
		else{
			
			def user = (User)session["user"]
			render( view: "userList", model : [ username :
				user.name.toUpperCase() ] )
		}
	}

	def loadUsers(){
		render User.listOrderByName() as JSON
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
					name: params.name,
					passwordHash: new String(Base64.encodeBase64(params.password.getBytes())),
					email:params.mail
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
		def realPass = new String(Base64.decodeBase64(passwordHash.toString().getBytes()))
		return password.equals(realPass)
	}





	def index() {
	}
}
