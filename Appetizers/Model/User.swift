//
//  User.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 6.02.2024.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkin = false
    var frequentRefills = false
}
