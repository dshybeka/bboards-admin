package org.bboards.admin.services

import org.bboards.admin.domains.Photo
import org.springframework.beans.factory.annotation.Value

class PhotoStoreService {

    static transactional = false

    @Value('${bboard.photo.storage.home}')
    String photoStorageHome

    public static final int NUMBER_OF_FIRST_LEVEL_FOLDER = 100
    Random rnd = new Random()


    Photo saveDayPhotoFile(String boardId, def file) {

        log.debug("Save day photo to filesystem for board: ${boardId}")

        savePhotoFileForType(boardId, file, PhotoType.DAY)
    }

    Photo saveNightPhotoFile(String boardId, def file) {

        log.debug("Save --> ${photoStorageHome} night photo to filesystem for board: ${boardId}")

        savePhotoFileForType(boardId, file, PhotoType.NIGHT)
    }

    Photo savePhotoFileForType(String boardId, def file, PhotoType type) {

        def pathToFolder = "$photoStorageHome/${getRandomFirstLevelFolder()}"
        def fileName = "${type.name}_${boardId}"

        Photo photo = new Photo()
        photo.path = "$pathToFolder/$fileName"
        photo.url = "/board/${boardId}/${type.name}Photo"

        def photoFolder = new File( pathToFolder )

        if( !photoFolder.exists() ) {
            photoFolder.mkdirs()
        }

        file.transferTo(new File( photoFolder, fileName ))

        photo
    }

    private  String getRandomFirstLevelFolder() {
        return rnd.nextInt(NUMBER_OF_FIRST_LEVEL_FOLDER)
    }

    enum PhotoType {
        DAY(name: "day"),
        NIGHT(name: "night")

        String name
    }
}
