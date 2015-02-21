class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		
		//"/"(view:"user/index")
		"/" ( controller:'User', action:'renderIndex' )
        "500"(view:'/error')
	}
}
