package com.druid628.gmb

class Person {

	transient springSecurityService

	String firstName
	String lastName
	String username
	String password
	String email
	// boolean godMode = false; //admin
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		firstName blank: false
		lastName blank: false
		email blank: false, unique: true, email: true
		username blank: false, unique: true
		password blank: false
	}

	@Override
	public String toString()
	{
		return firstName + " " + lastName;
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Authority> getAuthorities() {
		PersonAuthority.findAllByPerson(this).collect { it.authority } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
