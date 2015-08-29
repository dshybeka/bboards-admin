package org.bboards.admin.domains

import com.google.common.collect.Lists
import org.bboards.admin.domains.enums.Surface
import org.bson.types.ObjectId

class Board {

    ObjectId id

    String boardFormat

    String sides

    String sideDirections

    Surface surface

    String range

    String weekdayFlow

    String dayOffFlow

    Owner owner

    Long minRentDuration // TODO: hrs?

    BigDecimal installationPrice

    List<Timetable> timetables = Lists.newArrayList()

    String notes

    String additionalDescription

    BigDecimal price

    Boolean isBacklight

    Boolean crossroads

    Boolean stops

//    String entertainmentCenters

    Boolean trafficLight

    Boolean pedestrianCrossings

    Boolean narrowArea

    Position mapPosition

    Photo nightPhoto

    Photo dayPhoto

    Address address

    List<String> searchTags = Lists.newArrayList()

    static hasMany = [dayPhoto: Photo, nightPhoto: Photo]

    static embedded = ['timetables', 'mapPosition', 'nightPhoto', 'dayPhoto', 'address', 'searchTags']

    static mapWith = "mongo"

    static mapping = {
        mapPosition cascade: "save-update,delete"
        nightPhoto cascade: "save-update,delete"
        dayPhoto cascade: "save-update,delete"
        address cascade: "save-update,delete"
    }

    static constraints = {

        boardFormat nullable: true

        address nullable: true

        dayPhoto nullable: true

        sides nullable: true

        sideDirections nullable: true

        nightPhoto nullable: true

        surface nullable: true

        installationPrice nullable: true

        range nullable: true

        weekdayFlow nullable: true

        dayOffFlow nullable: true

        owner nullable: true

        minRentDuration nullable: true

        installationPrice nullable: true

        timetables nullable: true

        notes nullable: true

        additionalDescription nullable: true

        price nullable: true

        isBacklight nullable: true

        crossroads nullable: true

        stops nullable: true

//        entertainmentCenters nullable: true

        searchTags nullable: true

        trafficLight nullable: true

        pedestrianCrossings nullable: true

        narrowArea nullable: true

        mapPosition nullable: true
    }
}
