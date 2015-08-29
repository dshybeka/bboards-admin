
package org.bboards.admin.domains

import org.bboards.admin.enums.UserStatus


class UserDetails {

    String legalName
    String legalAddress
    String postalAddress
    String currentAccount // текущий счет
    String bank
    String bankNumber
    String unp
    String chefFio
    String under // на основании
    String contactPerson
    String contactPersonPhone
    String contactPersonEmail

    String phone
    String fio
    String email
    UserStatus userStatus = UserStatus.REGISTERED

    static constraints = {
        phone nullable: true
        fio nullable: true
        email nullable: true
    }
}
