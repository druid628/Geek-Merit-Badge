package com.druid628.gmb

class Badge {

    String title
    String description
    String image

    static constraints = {
        title(blank: false)
        description(blank: false)
        image(blank: false)
    }
}
