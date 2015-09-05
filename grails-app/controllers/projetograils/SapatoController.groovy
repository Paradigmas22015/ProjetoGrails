package projetograils

import org.springframework.dao.DataIntegrityViolationException

class SapatoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sapatoInstanceList: Sapato.list(params), sapatoInstanceTotal: Sapato.count()]
    }

    def create() {
        [sapatoInstance: new Sapato(params)]
    }

    def save() {
        def sapatoInstance = new Sapato(params)
        if (!sapatoInstance.save(flush: true)) {
            render(view: "create", model: [sapatoInstance: sapatoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sapato.label', default: 'Sapato'), sapatoInstance.id])
        redirect(action: "show", id: sapatoInstance.id)
    }

    def show(Long id) {
        def sapatoInstance = Sapato.get(id)
        if (!sapatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), id])
            redirect(action: "list")
            return
        }

        [sapatoInstance: sapatoInstance]
    }

    def edit(Long id) {
        def sapatoInstance = Sapato.get(id)
        if (!sapatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), id])
            redirect(action: "list")
            return
        }

        [sapatoInstance: sapatoInstance]
    }

    def update(Long id, Long version) {
        def sapatoInstance = Sapato.get(id)
        if (!sapatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
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

    def delete(Long id) {
        def sapatoInstance = Sapato.get(id)
        if (!sapatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sapato.label', default: 'Sapato'), id])
            redirect(action: "list")
            return
        }

        try {
            sapatoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sapato.label', default: 'Sapato'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sapato.label', default: 'Sapato'), id])
            redirect(action: "show", id: id)
        }
    }
}
