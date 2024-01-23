//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 22.01.2024.
//

import SwiftUI

struct AppetizerListView: View {

    @State private var appetizers: [Appetizer] = []

    var body: some View {
        NavigationStack {
            List(appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizer")
        }
        .onAppear(){
            getAppetizers()
        }
    }

    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizer):
                    self.appetizers = appetizer
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    AppetizerListView()
}
