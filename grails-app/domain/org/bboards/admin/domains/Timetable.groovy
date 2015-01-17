package org.bboards.admin.domains

import org.joda.time.LocalDateTime

class Timetable {

    private LocalDateTime startDate;

    private LocalDateTime endDate;

    static mapWith = "mongo"

    static constraints = {
    }
}
