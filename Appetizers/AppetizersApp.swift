//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 22.01.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
