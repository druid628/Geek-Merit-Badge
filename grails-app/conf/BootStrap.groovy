import com.druid628.gmb.Person
import com.druid628.gmb.PersonAuthority
import com.druid628.gmb.Authority
import grails.util.Environment

class BootStrap {
	def springSecurityService

	def adminRole = new Authority(authority: 'ROLE_ADMIN', description: 'Admin role').save()
	def userRole = new Authority(authority: 'ROLE_USER', description: 'User role').save()

	def init = { servletContext ->
		if (Environment.current == Environment.PRODUCTION ||
		Environment.current == Environment.TEST) {
			productionData()
		}
	    

		if (Environment.current == Environment.DEVELOPMENT) 
		{
			developmentData()
			productionData()
		}
	}

	def destroy = {
	}

	def developmentData = {
			[user1: 'No1', user2: 'No2', user3: "No3"].each { userName, realName ->
		   		def user = new Person(
					username: userName,
					firstName: 'User',
					lastName: realName,
					password: "password",
					accountExpired: false,
					accountLocked: false,
					passwordExpired: false,
					enabled: true
				).save()

		     		PersonAuthority.create user, userRole, true
			}

	}

	def productionData = {

		// PersonAuthority druid = new PersonAuthority(
		Person druid = new Person(
			username: "druid",
			firstName: "Micah",
			lastName: "Breedlove",
			email: "druid628@gmail.com",
			password: "p4ssw0rd",
			enabled: true,
			accountExpired: false,
			accountLocked: false,
			passwordExpired: false

		).save()

		if (!druid.authorities.contains(adminRole)) {
			PersonAuthority.create druid, adminRole
		}

	}
		
}
