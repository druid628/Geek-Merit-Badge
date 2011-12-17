class UrlMappings {

	static mappings = {
		
		"/$username" {
			controller = "person"
			action = "show"
		}

		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")


		"/award" {
			controller = "person2Badge"
			action = "create"
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
