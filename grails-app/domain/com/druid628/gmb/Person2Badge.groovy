package com.druid628.gmb

class Person2Badge {

	Person user
	Badge badges
	Person givenBy
	String comments
	Date dateCreated

	static hasMany = [badges:Badge]

	static constraints = {
		user(blank:false)
		badges(blank:false)
	}
}
