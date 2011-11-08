import com.druid628.gmb.Person
import com.druid628.gmb.PersonAuthority
import com.druid628.gmb.Authority
import grails.util.Environment

class BootStrap {
    def springSecurityService

	def init = { servletContext ->
		/*if (Environment.current == Environment.PRODUCTION ||
			Environment.current == Environment.TEST) {
			// productionData()
		}*/
	    

		if (Environment.current == Environment.DEVELOPMENT) 
		{
			// productionData()
			developmentData()
		}
	}

	def destroy = {
	}

   def developmentData = {
		String password = springSecurityService.encodePassword('password')


		// PersonAuthority druid = new PersonAuthority(
		Person druid = new Person(
			username: "druid",
			firstName: "Micah",
			lastName: "Breedlove",
			godMode: true,
			email: "druid628@gmail.com",
			password: password,
			enabled: true
		).save()

	/*	[user1: 'User No1', user2: 'User No2'].each { userName, realName ->
         *  		def user = new Person(username: userName, realName: realName, password: password, enabled: true).save()
         *    		PersonAuthority.create user, userRole, true
         *	}
	 */
	}
		
}
