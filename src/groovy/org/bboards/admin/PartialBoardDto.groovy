package org.bboards.admin

import groovy.transform.ToString
import org.bboards.admin.domains.Address
import org.bboards.admin.domains.Photo
import org.bboards.admin.domains.Position
import org.bboards.admin.domains.Timetable


/**
 * Created by dshybeka on 24.01.2015.
 */
@ToString
class PartialBoardDto {
    String id
    Position mapPosition
    BigDecimal price
    String additionalDescription
    List<Timetable> timetables
    Photo dayPhoto
    Photo nightPhoto
    String surfaceName
    Address address
    String entertainmentCenters
}
