package com.druid628.gmb

class Badge {

	String title
	String description
	String image
	//byte[] image

	static constraints = {
		title(blank: false)
		description(blank: false)
	}

	@Override
	public String toString()
	{
		return title
	}
}
