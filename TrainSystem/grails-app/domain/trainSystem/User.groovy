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
		passwordHash(blank:false, nullable: false)
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
    
    static String sha256( String input ) {
        def digest = java.security.MessageDigest.getInstance("SHA-256")
        digest.update( input.bytes )
        new BigInteger(1,digest.digest()).toString(16).padLeft(32, '0')
}
    
}
