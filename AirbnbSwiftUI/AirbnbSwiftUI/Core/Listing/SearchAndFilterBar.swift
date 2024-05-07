//
//  SearchAndFilterBar.swift
//  AirbnbSwiftUI
//
//  Created by Dinesh Danda on 4/30/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Anytime - add guests.")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button(action: {}, label: {
               Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
