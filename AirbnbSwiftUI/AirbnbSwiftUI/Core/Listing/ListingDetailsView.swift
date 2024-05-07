//
//  ListingDetailsView.swift
//  AirbnbSwiftUI
//
//  Created by Dinesh Danda on 4/30/24.
//

import SwiftUI

struct ListingDetailsView: View {
    var images = ["listing-1","listing-3","listing-4","listing-5"]
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
            .frame(height: 320)
            VStack(alignment: .leading, spacing: 8) {
                Text("Nashville Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("4.84")
                        Text("...")
                        Text("30 reviews")
                            .underline()
                            .foregroundStyle(.black)
                    }
                    .foregroundColor(.black)
                    Text("Nashville, Tennessee")
                }
                .font(.caption)
            } 
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            Divider()
            
            HStack {
                VStack {
                    Text("Entire villa was hosted by Dinesh Danda")
                }
            }
        }
    }
}

#Preview {
    ListingDetailsView()
}
