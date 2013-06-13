package bancocjp2

import org.springframework.dao.DataIntegrityViolationException

class ContaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contaInstanceList: Conta.list(params), contaInstanceTotal: Conta.count()]
    }

    def create() {
        [contaInstance: new Conta(params)]
    }

    def save() {
        def contaInstance = new Conta(params)
        if (!contaInstance.save(flush: true)) {
            render(view: "create", model: [contaInstance: contaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'conta.label', default: 'Conta'), contaInstance.id])
        redirect(action: "show", id: contaInstance.id)
    }

    def show(Long id) {
        def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }

        [contaInstance: contaInstance]
    }

    def edit(Long id) {
        def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }

        [contaInstance: contaInstance]
    }

    def update(Long id, Long version) {
        def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (contaInstance.version > version) {
                contaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'conta.label', default: 'Conta')] as Object[],
                          "Another user has updated this Conta while you were editing")
                render(view: "edit", model: [contaInstance: contaInstance])
                return
            }
        }

        contaInstance.properties = params

        if (!contaInstance.save(flush: true)) {
            render(view: "edit", model: [contaInstance: contaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'conta.label', default: 'Conta'), contaInstance.id])
        redirect(action: "show", id: contaInstance.id)
    }

    def delete(Long id) {
        def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }

        try {
            contaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def credit(Long id) {
		def contaInstance = Conta.get(id)
		if (!contaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
			redirect(action: "list")
			return
		}
		
		[contaInstance: contaInstance]
	}
	
	def creditPost(Long id, Long version) {
        def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }
	}
	
	def debit(Long id, Long version){
        def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }
	}
	
	def transfer(Long id, Long version){
		def contaInstance = Conta.get(id)
        if (!contaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conta.label', default: 'Conta'), id])
            redirect(action: "list")
            return
        }
	}
}
