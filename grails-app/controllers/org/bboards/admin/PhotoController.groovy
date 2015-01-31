package org.bboards.admin

import grails.transaction.Transactional
import org.bboards.admin.domains.Board
import org.bboards.admin.domains.Photo

@Transactional(readOnly = true)
class PhotoController {

    def photoStoreService

    // TODO: refactor to use DRY principe
    @Transactional
    def saveDayPhoto() {

        log.info "Save file for params: ${params}"

        assert params.boardId, "Board id should be presented"

        // TODO: check sql executed for operation
        Board photoOwnerBoard = Board.load(params.boardId)

        assert photoOwnerBoard, "Board should exist"

        def file = request.getFile('dayPhoto')
        photoOwnerBoard.dayPhoto = photoStoreService.saveDayPhotoFile(params.boardId, file)
        photoOwnerBoard.save(flush: true)

        if (photoOwnerBoard.hasErrors() || photoOwnerBoard.dayPhoto.hasErrors()) {
            log.warn "Cannot create not about new day photo: ${photoOwnerBoard.errors}, ${photoOwnerBoard.dayPhoto.errors}"
            flash.message = "Error while creating day photo for board: ${params.boardId}"
        }
        redirect(controller: "board", action: "showFromParams", params: [boardId: photoOwnerBoard.id.toString()])
    }

    @Transactional
    def saveNightPhoto() {

        log.info "Save night photofor params: ${params}"

        assert params.boardId, "Board id should be presented"

        // TODO: check sql executed for operation
        Board photoOwnerBoard = Board.load(params.boardId)

        assert photoOwnerBoard, "Board should exist"

        def file = request.getFile('nightPhoto')
        photoOwnerBoard.nightPhoto = photoStoreService.saveNightPhotoFile(params.boardId, file)
        photoOwnerBoard.save(flush: true)

        if (photoOwnerBoard.hasErrors() || photoOwnerBoard.nightPhoto.hasErrors()) {
            log.warn "Cannot create not about new day photo: ${photoOwnerBoard.errors}, ${photoOwnerBoard.nightPhoto.errors}"
            flash.message = "Error while creating day photo for board: ${params.boardId}"
        }
        redirect(controller: "board", action: "showFromParams", params: [boardId: photoOwnerBoard.id.toString()])
    }

    def getDayPhoto() {

        log.info "Get day photo for board params: ${params}"

        assert params.boardId, "Board id should be presented"

        Board board = Board.get(params.boardId)

        if (board.dayPhoto) {

            def dayPhotoFile = new File(board.dayPhoto.path)
            response.setContentLength(dayPhotoFile.size().toInteger())
            response.contentType = 'image/png' // or the appropriate image content type
            response.outputStream << dayPhotoFile.bytes
            response.outputStream.flush()

            return
        } else {
            render status: 404
        }
    }

    def getNightPhoto() {

        log.info "Get day photo for board params: ${params}"

        assert params.boardId, "Board id should be presented"

        Board board = Board.get(params.boardId)

        if (board.nightPhoto) {

            def dayPhotoFile = new File(board.nightPhoto.path)
            response.setContentLength(dayPhotoFile.size().toInteger())
            response.contentType = 'image/png' // or the appropriate image content type
            response.outputStream << dayPhotoFile.bytes
            response.outputStream.flush()

            return
        } else {
            render status: 404
        }
    }

    def showSave() {
        log.info "Show save files page for id: ${params}"
        render view: "photo-upload", model: [boardId: params.boardId]
    }
}
