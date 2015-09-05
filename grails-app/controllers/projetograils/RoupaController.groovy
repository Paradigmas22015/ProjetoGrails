package projetograils

import org.springframework.dao.DataIntegrityViolationException

class RoupaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [roupaInstanceList: Roupa.list(params), roupaInstanceTotal: Roupa.count()]
    }

    def create() {
        [roupaInstance: new Roupa(params)]
    }

    def save() {
        def roupaInstance = new Roupa(params)
        if (!roupaInstance.save(flush: true)) {
            render(view: "create", model: [roupaInstance: roupaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'roupa.label', default: 'Roupa'), roupaInstance.id])
        redirect(action: "show", id: roupaInstance.id)
    }

    def show(Long id) {
        def roupaInstance = Roupa.get(id)
        if (!roupaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), id])
            redirect(action: "list")
            return
        }

        [roupaInstance: roupaInstance]
    }

    def edit(Long id) {
        def roupaInstance = Roupa.get(id)
        if (!roupaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), id])
            redirect(action: "list")
            return
        }

        [roupaInstance: roupaInstance]
    }

    def update(Long id, Long version) {
        def roupaInstance = Roupa.get(id)
        if (!roupaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
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

    def delete(Long id) {
        def roupaInstance = Roupa.get(id)
        if (!roupaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roupa.label', default: 'Roupa'), id])
            redirect(action: "list")
            return
        }

        try {
            roupaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'roupa.label', default: 'Roupa'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roupa.label', default: 'Roupa'), id])
            redirect(action: "show", id: id)
        }
    }
}
