import com.druid628.gmb.Person

class BootStrap {

	def init = { servletContext ->
		if (Environment.current == Environment.PRODUCTION ||
			Environment.current == Environment.TEST) {
			// productionData()
		}
	    
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

		Person druid = new Person(
			username: "druid",
			firstName: "Micah",
			lastName: "Breedlove",
			email: "druid628@gmail.com",
			password: password,
			enabled: true
		).save()
		
	}
}
