package projetograils

import org.springframework.dao.DataIntegrityViolationException

/**
 * GuardaRoupasController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class GuardaRoupasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [guardaRoupasInstanceList: GuardaRoupas.list(params), guardaRoupasInstanceTotal: GuardaRoupas.count()]
    }

    def create() {
        [guardaRoupasInstance: new GuardaRoupas(params)]
    }

    def save() {
        def guardaRoupasInstance = new GuardaRoupas(params)
        if (!guardaRoupasInstance.save(flush: true)) {
            render(view: "create", model: [guardaRoupasInstance: guardaRoupasInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), guardaRoupasInstance.id])
        redirect(action: "show", id: guardaRoupasInstance.id)
    }

    def show() {
        def guardaRoupasInstance = GuardaRoupas.get(params.id)
        if (!guardaRoupasInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), params.id])
            redirect(action: "list")
            return
        }

        [guardaRoupasInstance: guardaRoupasInstance]
    }

    def edit() {
        def guardaRoupasInstance = GuardaRoupas.get(params.id)
        if (!guardaRoupasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), params.id])
            redirect(action: "list")
            return
        }

        [guardaRoupasInstance: guardaRoupasInstance]
    }

    def update() {
        def guardaRoupasInstance = GuardaRoupas.get(params.id)
        if (!guardaRoupasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (guardaRoupasInstance.version > version) {
                guardaRoupasInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'guardaRoupas.label', default: 'GuardaRoupas')] as Object[],
                          "Another user has updated this GuardaRoupas while you were editing")
                render(view: "edit", model: [guardaRoupasInstance: guardaRoupasInstance])
                return
            }
        }

        guardaRoupasInstance.properties = params

        if (!guardaRoupasInstance.save(flush: true)) {
            render(view: "edit", model: [guardaRoupasInstance: guardaRoupasInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), guardaRoupasInstance.id])
        redirect(action: "show", id: guardaRoupasInstance.id)
    }

    def delete() {
        def guardaRoupasInstance = GuardaRoupas.get(params.id)
        if (!guardaRoupasInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), params.id])
            redirect(action: "list")
            return
        }

        try {
            guardaRoupasInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
