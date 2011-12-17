package com.druid628.gmb

class Person2BadgeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def springSecurityService

    private lookupPerson()
    {
	return Person.get(springSecurityService.principal.id);
    }

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [person2BadgeInstanceList: Person2Badge.list(params), person2BadgeInstanceTotal: Person2Badge.count()]
    }

    def create = {
        def person2BadgeInstance = new Person2Badge()
        person2BadgeInstance.properties = params
        return [person2BadgeInstance: person2BadgeInstance]
    }

    def save = {
        def person2BadgeInstance = new Person2Badge(params)
        if (person2BadgeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), person2BadgeInstance.id])}"
            redirect(action: "show", id: person2BadgeInstance.id)
        }
        else {
            render(view: "create", model: [person2BadgeInstance: person2BadgeInstance])
        }
    }

    def show = {
        def person2BadgeInstance = Person2Badge.get(params.id)
        if (!person2BadgeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), params.id])}"
            redirect(action: "list")
        }
        else {
            [person2BadgeInstance: person2BadgeInstance]
        }
    }

    def edit = {
        def person2BadgeInstance = Person2Badge.get(params.id)
        if (!person2BadgeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [person2BadgeInstance: person2BadgeInstance]
        }
    }

    def update = {
        def person2BadgeInstance = Person2Badge.get(params.id)
        if (person2BadgeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (person2BadgeInstance.version > version) {
                    
                    person2BadgeInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'person2Badge.label', default: 'Person2Badge')] as Object[], "Another user has updated this Person2Badge while you were editing")
                    render(view: "edit", model: [person2BadgeInstance: person2BadgeInstance])
                    return
                }
            }
            person2BadgeInstance.properties = params
            if (!person2BadgeInstance.hasErrors() && person2BadgeInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), person2BadgeInstance.id])}"
                redirect(action: "show", id: person2BadgeInstance.id)
            }
            else {
                render(view: "edit", model: [person2BadgeInstance: person2BadgeInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def person2BadgeInstance = Person2Badge.get(params.id)
        if (person2BadgeInstance) {
            try {
                person2BadgeInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'person2Badge.label', default: 'Person2Badge'), params.id])}"
            redirect(action: "list")
        }
    }
}
