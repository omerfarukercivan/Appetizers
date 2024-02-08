//
//  AccountView.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 22.01.2024.
//

import SwiftUI

struct AccountView: View {

    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never) 
                        .autocorrectionDisabled(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    Button(action: {
                        viewModel.saveChanges()
                    }, label: {
                        Text("Save Button")
                    })
                } header: {
                    Text("Personal Info")
                }

                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkin)
                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    Toggle("Frequnt Refills", isOn: $viewModel.user.frequentRefills)
                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                } header: {
                    Text("Requests")
                }
            }
            .navigationTitle("Account")
        }
        .onAppear{
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
