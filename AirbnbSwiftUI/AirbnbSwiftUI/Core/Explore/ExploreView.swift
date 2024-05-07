//
//  ExploreView.swift
//  AirbnbSwiftUI
//
//  Created by Dinesh Danda on 4/19/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView() {
                SearchAndFilterBar()
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        }
                    }
                }
            } .navigationDestination(for: Int.self) { listing in
                Text("Navigation Destination....")
        }
        }
    }
}

#Preview {
    ExploreView()
}
