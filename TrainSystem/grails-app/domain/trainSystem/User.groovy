package trainSystem

class User {
	
        Long id
	def String passwordHash
	def String firstname
        def String lastname
	def String email
        def String role
        def Date birth
        def String documenType
        def String documentNumber
                

	static constraints = {
		passwordHash(blank:false, nullable: false, size: 7..15)
		firstname(blank:false, nullable:false, size: 3..20)
                lastname(blank:false, nullable:false, size: 3..20)
		email(blank:false, nullable:false)
                role(blank:true, nullable:true)
                birth(blank:true, nullable:true)
                documenType(blank:true, nullable:true, inList: ["CC", "Cédula extranjeria", "Pasaporte"])
                documentNumber(blank:true, nullable:true)
		
	}
	
	
	static mapping = {
        version false
    }
    
}
