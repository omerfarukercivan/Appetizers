//
//  OrderView.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 22.01.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button(action: { 
                        print("order66")
                    }, label: {
                        AppetizerButton(title: "\(order.totalPrice, specifier: "%.2f") - Place Order")
                    })
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
