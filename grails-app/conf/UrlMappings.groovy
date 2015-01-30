class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/board/${boardId}/dayPhoto"(controller: "photo", action: "getDayPhoto")
        "/board/${boardId}/nightPhoto"(controller: "photo", action: "getNightPhoto")

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
