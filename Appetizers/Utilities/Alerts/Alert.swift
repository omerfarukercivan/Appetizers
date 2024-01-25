//
//  Alert.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 24.01.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please connect support."),
                                       dismissButton: .default(Text("OK")))

    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server was invalid. Please try again later or connect support."),
                                           dismissButton: .default(Text("OK")))

    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting to the server. If this persist, please connect support."),
                                      dismissButton: .default(Text("OK")))

    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("OK")))
}
