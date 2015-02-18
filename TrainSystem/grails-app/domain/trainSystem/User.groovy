package trainSystem

class User {
	
	def String passwordHash
	def String firstname
        def String lastname
	def String email

	static constraints = {
		passwordHash(blank:false, nullable: false)
		firstname(blank:false, nullable:false)
                lastname(blank:false, nullable:false)
		email(blank:false, nullable:false)
		
	}
	
	
	static mapping = {
        version false
    }
    
}
