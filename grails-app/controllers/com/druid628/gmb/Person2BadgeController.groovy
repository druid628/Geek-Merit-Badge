package com.druid628.gmb

class Person2BadgeController {

	def springSecurityService

	def scaffold = Person2Badge 
	
	/*
	def index = { }

	def presentBadge = {
		def award = new Person2Badge(badges: params.badge, user: params.givenTo)
		award.givenBy = lookupPerson()
		award.save()
	} */

	private lookupPerson()
	{
		Person.get(springSecurityService.principal.id)
	}
}
