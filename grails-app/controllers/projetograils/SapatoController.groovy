package projetograils
import projetograils.GuardaRoupas
import grails.plugins.springsecurity.SpringSecurityService
import org.springframework.dao.DataIntegrityViolationException

/**
 * SapatoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class SapatoController {
    SpringSecurityService springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sapatoInstanceList: Sapato.list(params), sapatoInstanceTotal: Sapato.count()]
    }

    def create() {
        [sapatoInstance: new Sapato(params)]
    }

    def save() {
        def sapatoInstance = new Sapato(params)
        sapatoInstance.guardaRoupas = GuardaRoupas.findByDono(springSecurityService.currentUser)
        if (!sapatoInstance.save(flush: true)) {
            render(view: "create", model: [sapatoInstance: sapatoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'sapato.label', default: 'Sapato'), sapatoInstance.id])
        redirect(action: "show", id: sapatoInstance.id)
    }

    def show() {
        def sapatoInstance = Sapato.get(params.id)
        if (!sapatoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), params.id])
            redirect(action: "list")
            return
        }

        [sapatoInstance: sapatoInstance]
    }

    def edit() {
        def sapatoInstance = Sapato.get(params.id)
        if (!sapatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), params.id])
            redirect(action: "list")
            return
        }

        [sapatoInstance: sapatoInstance]
    }

    def update() {
        def sapatoInstance = Sapato.get(params.id)
        if (!sapatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (sapatoInstance.version > version) {
                sapatoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sapato.label', default: 'Sapato')] as Object[],
                          "Another user has updated this Sapato while you were editing")
                render(view: "edit", model: [sapatoInstance: sapatoInstance])
                return
            }
        }

        sapatoInstance.properties = params

        if (!sapatoInstance.save(flush: true)) {
            render(view: "edit", model: [sapatoInstance: sapatoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'sapato.label', default: 'Sapato'), sapatoInstance.id])
        redirect(action: "show", id: sapatoInstance.id)
    }

    def delete() {
        def sapatoInstance = Sapato.get(params.id)
        if (!sapatoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), params.id])
            redirect(action: "list")
            return
        }

        try {
            sapatoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'sapato.label', default: 'Sapato'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sapato.label', default: 'Sapato'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
