package com.druid628.gmb

class PersonController {

	//    def index = { }
	def view =  {
		def usr = new Person(username: params.username)
		def users2Badges = new Person2Badge(user: usr.id)
		def badges
		users2Badges.each( badges[] = Badge.(it.badges))
		
	}

	def scaffold = Person
}
