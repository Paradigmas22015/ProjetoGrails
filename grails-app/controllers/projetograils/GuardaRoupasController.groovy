package projetograils

import org.springframework.dao.DataIntegrityViolationException

class GuardaRoupasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
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

    def show(Long id) {
        def guardaRoupasInstance = GuardaRoupas.get(id)
        if (!guardaRoupasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), id])
            redirect(action: "list")
            return
        }

        [guardaRoupasInstance: guardaRoupasInstance]
    }

    def edit(Long id) {
        def guardaRoupasInstance = GuardaRoupas.get(id)
        if (!guardaRoupasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), id])
            redirect(action: "list")
            return
        }

        [guardaRoupasInstance: guardaRoupasInstance]
    }

    def update(Long id, Long version) {
        def guardaRoupasInstance = GuardaRoupas.get(id)
        if (!guardaRoupasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
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

    def delete(Long id) {
        def guardaRoupasInstance = GuardaRoupas.get(id)
        if (!guardaRoupasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), id])
            redirect(action: "list")
            return
        }

        try {
            guardaRoupasInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'guardaRoupas.label', default: 'GuardaRoupas'), id])
            redirect(action: "show", id: id)
        }
    }
}
