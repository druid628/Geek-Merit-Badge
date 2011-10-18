package com.druid628.gmb

class PersonController {

	//    def index = { }
	def view =  {
		def usr = new Person(username: params.username)
		def usersBadges = new Person2Badge(user: usr.id)
	}

	def scaffold = Person
}
