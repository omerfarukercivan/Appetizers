//
//  AppetizerButton.swift
//  Appetizers
//
//  Created by Ömer Faruk Ercivan on 25.01.2024.
//

import SwiftUI

struct AppetizerButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color(.brandPrimary))
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    AppetizerButton(title: "Test")
}
