//
//  ListingImageCarouselView.swift
//  AirbnbSwiftUI
//
//  Created by Dinesh Danda on 4/30/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = ["listing-1","listing-3","listing-4","listing-5"]
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10.0)
            }
        }
        .frame(height: 320)
    }
}

#Preview {
    ListingImageCarouselView()
}
