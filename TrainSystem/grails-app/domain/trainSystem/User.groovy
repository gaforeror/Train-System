package trainSystem

class User {
	
	def String passwordHash
	def String name
	def String email

	static constraints = {
		passwordHash(blank:false, nullable: false)
		name(blank:false, nullable:false)
		email(blank:false, nullable:false)
		
	}
	
	
	static mapping = {
        version false
    }
    
}
