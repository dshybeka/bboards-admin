package org.bboards.admin.org.bboards.admin

import grails.transaction.Transactional
import org.bboards.admin.domains.Board
import org.bboards.admin.domains.Photo

@Transactional(readOnly = true)
class PhotoController {

    @Transactional
    def saveDayPhoto() {

        log.info "Save file for params: ${params}"

        assert params.boardId, "Board id should be presented"

        // TODO: check sql executed for operation
        Board photoOwnerBoard = Board.load(params.boardId)

        Photo photo = new Photo()
        photo.path = "/tmp/day_${params.boardId}"
        photo.url = "/board/${params.boardId}/dayPhoto"
        photoOwnerBoard.dayPhoto = photo
        photoOwnerBoard.save(flush: true)
        log.info "photoOwnerBoard.dayPhoto " + photoOwnerBoard.dayPhoto

        if (!photoOwnerBoard.hasErrors() && !photoOwnerBoard.dayPhoto.hasErrors()) {

            def file = request.getFile('dayPhoto')

            log.info "Store following file: ${file}"

            def storeFile = new File(photo.path)
//        File fileDest = new File(storeFile,"path/to/some_folder")
            file.transferTo(storeFile)

        } else {
            log.warn "Cannot create not about new day photo: ${photoOwnerBoard.errors}, ${photoOwnerBoard.dayPhoto.errors}"
        }
        redirect(controller: "board", action: "showFromParams", params: [boardId: photoOwnerBoard.id.toString()])
    }

    @Transactional
    def saveNightPhoto() {

        log.info "Save night photofor params: ${params}"

        assert params.boardId, "Board id should be presented"

        // TODO: check sql executed for operation
        Board photoOwnerBoard = Board.load(params.boardId)

        Photo photo = new Photo()
        photo.path = "/tmp/night_${params.boardId}"
        photo.url = "/board/${params.boardId}/nightPhoto"
        photoOwnerBoard.nightPhoto = photo
        photoOwnerBoard.save(flush: true)
        log.info "photoOwnerBoard.nightPhoto " + photoOwnerBoard.nightPhoto

        if (!photoOwnerBoard.hasErrors() && !photoOwnerBoard.nightPhoto.hasErrors()) {

            def file = request.getFile('nightPhoto')

            log.info "Store following file: ${file}"

            def storeFile = new File(photo.path)
            file.transferTo(storeFile) // TODO: add logic for generating filesystem protected paths

        } else {
            log.warn "Cannot create not about new night photo: ${photoOwnerBoard.errors}, ${photoOwnerBoard.nightPhoto.errors}"
        }
        redirect(controller: "board", action: "showFromParams", params: [boardId: photoOwnerBoard.id.toString()])
    }

    def getDayPhoto() {

        log.info "Get day photo for board params: ${params}"

        assert params.boardId, "Board id should be presented"

        Board board = Board.get(params.boardId)

        log.info "board.dayPhoto " + board.dayPhoto

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
