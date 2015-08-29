package org.bboards.admin

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import org.bboards.admin.domains.Board

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
@Secured("ROLE_USER")
class BoardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured("ROLE_USER")
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Board.list(params), model:[boardInstanceCount: Board.count()]
    }

    @Secured("ROLE_USER")
    def show(Board boardInstance) {
        respond boardInstance
    }

    @Secured("ROLE_USER")
    def showFromParams() {

        assert params.boardId, "Board id should be presented"

        def boardInstance = Board.get(params.boardId)

        render view: "show", model: [boardInstance: boardInstance]
    }

    @Secured("ROLE_USER")
    def create() {
        respond new Board(params)
    }

    @Secured("ROLE_USER")
    @Transactional
    def save(Board boardInstance) {
        if (boardInstance == null) {
            notFound()
            return
        }

        if (boardInstance.hasErrors()) {
            respond boardInstance.errors, view:'create'
            return
        }

        boardInstance.save flush:true

        println "boardInstance " + boardInstance

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'board.label', default: 'Board'), boardInstance.id])
                redirect boardInstance
            }
            '*' { respond boardInstance, [status: CREATED] }
        }
    }

    @Secured("ROLE_USER")
    def edit(Board boardInstance) {
        log.info "Show edit page for board: ${boardInstance?.id}"
        respond boardInstance
    }

    @Secured("ROLE_USER")
    @Transactional
    def update(Board boardInstance) {

        if (boardInstance == null) {
            notFound()
            return
        }

        if (boardInstance.hasErrors()) {
            respond boardInstance.errors, view:'edit'
            return
        }

        boardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Board.label', default: 'Board'), boardInstance.id])
                redirect boardInstance
            }
            '*'{ respond boardInstance, [status: OK] }
        }
    }

    @Secured("ROLE_USER")
    @Transactional
    def delete(Board boardInstance) {

        if (boardInstance == null) {
            notFound()
            return
        }

        boardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message( default: 'Board'), boardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message( default: 'Board'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

