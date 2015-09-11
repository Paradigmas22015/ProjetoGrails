package projetograils
import projetograils.GuardaRoupas
import grails.plugins.springsecurity.SpringSecurityService
import org.springframework.dao.DataIntegrityViolationException

/**
 * RoupaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class RoupaController {
    SpringSecurityService springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [roupaInstanceList: Roupa.list(params), roupaInstanceTotal: Roupa.count()]
    }

    def create() {
        [roupaInstance: new Roupa(params)]
    }

    def save() {
        def roupaInstance = new Roupa(params)
        roupaInstance.guardaRoupas = GuardaRoupas.findByDono(springSecurityService.currentUser)
        if (!roupaInstance.save(flush: true)) {
            render(view: "create", model: [roupaInstance: roupaInstance])
            return
        }

		flash.message = "Roupa criada com sucesso!"
        redirect(action: "show", id: roupaInstance.id)
    }

    def show() {
        def roupaInstance = Roupa.get(params.id)
        if (!roupaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), params.id])
            redirect(action: "list")
            return
        }

        [roupaInstance: roupaInstance]
    }

    def edit() {
        def roupaInstance = Roupa.get(params.id)
        if (!roupaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), params.id])
            redirect(action: "list")
            return
        }

        [roupaInstance: roupaInstance]
    }

    def update() {
        def roupaInstance = Roupa.get(params.id)
        if (!roupaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (roupaInstance.version > version) {
                roupaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'roupa.label', default: 'Roupa')] as Object[],
                          "Another user has updated this Roupa while you were editing")
                render(view: "edit", model: [roupaInstance: roupaInstance])
                return
            }
        }

        roupaInstance.properties = params

        if (!roupaInstance.save(flush: true)) {
            render(view: "edit", model: [roupaInstance: roupaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'roupa.label', default: 'Roupa'), roupaInstance.id])
        redirect(action: "show", id: roupaInstance.id)
    }

    def delete() {
        def roupaInstance = Roupa.get(params.id)
        if (!roupaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), params.id])
            redirect(action: "list")
            return
        }

        try {
            roupaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'roupa.label', default: 'Roupa'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roupa.label', default: 'Roupa'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
