package org.bboards.admin.domains

import org.bboards.admin.domains.enums.Distinct

class Address {

    private String fullAddress;

    private Distinct district;

    static mapWith = "mongo"

    static constraints = {
    }
}
