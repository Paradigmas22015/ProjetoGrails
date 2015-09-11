package projetograils
import projetograils.GuardaRoupas
import grails.plugins.springsecurity.SpringSecurityService
import org.springframework.dao.DataIntegrityViolationException

/**
 * ItemController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ItemController {
    SpringSecurityService springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [itemInstanceList: Item.list(params), itemInstanceTotal: Item.count()]
    }

    def create() {
        [itemInstance: new Item(params)]
    }

    def save() {
        def itemInstance = new Item(params)
        itemInstance.guardaRoupas = GuardaRoupas.findByDono(springSecurityService.currentUser)

        if (!itemInstance.save(flush: true)) {
            render(view: "create", model: [itemInstance: itemInstance])
            return
        }

		flash.message = "Item criado com sucesso!"
        redirect(action: "show", id: itemInstance.id)
    }

    def show() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        [itemInstance: itemInstance]
    }

    def edit() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        [itemInstance: itemInstance]
    }

    def update() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (itemInstance.version > version) {
                itemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'item.label', default: 'Item')] as Object[],
                          "Another user has updated this Item while you were editing")
                render(view: "edit", model: [itemInstance: itemInstance])
                return
            }
        }

        itemInstance.properties = params

        if (!itemInstance.save(flush: true)) {
            render(view: "edit", model: [itemInstance: itemInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
        redirect(action: "show", id: itemInstance.id)
    }

    def delete() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        try {
            itemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
