//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 22.01.2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationStack {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizer")
        }
    }
}

#Preview {
    AppetizerListView()
}
