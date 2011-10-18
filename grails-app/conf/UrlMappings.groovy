class UrlMappings {

	static mappings = {
		"/$username" {
			controller = "person"
			action = "view"
		}

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}


		"/"(view:"/index")
		"500"(view:'/error')
	}
}
