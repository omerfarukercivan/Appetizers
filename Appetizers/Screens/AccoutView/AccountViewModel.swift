//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 26.01.2024.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkin = false
    @Published var frequentRefills = false
    @Published var alertItem: AlertItem?

    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }

        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }

    func saveChanges() {
        guard isValidForm else { return }
        print("saas")
    }
}
