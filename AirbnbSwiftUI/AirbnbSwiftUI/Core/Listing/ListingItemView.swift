//
//  ListingItemView.swift
//  AirbnbSwiftUI
//
//  Created by Dinesh Danda on 4/26/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = ["listing-1","listing-3","listing-4",
                  "listing-5"]
    var body: some View {
        VStack(spacing: 8) {
            // Image
            ListingImageCarouselView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            // Listing Details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Nashville,TN")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("May 2 - 6")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2) {
                        Text("$439")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                // ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }.padding()
    }
}

#Preview {
    ListingItemView()
}
