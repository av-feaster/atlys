//
//  InfiniteCarouselView.swift
//  atlys
//
//  Created by Aman Verma on 15/12/25.
//

import SwiftUI

struct CarouselView: View {
    let items: [CarouselItem]
    @State private var currentPage = 0

    var body: some View {
        VStack(spacing: 12) {
            Carousel(
                items: items,
                currentPage: $currentPage
            ) { item, isActive in
                CarouselCard(item: item, isActive: isActive)
                    .frame(width: UIScreen.main.bounds.width * 0.75)
            }
            .containerRelativeFrame(.horizontal)

            PageControl(
                numberOfPages: items.count,
                currentPage: $currentPage
            )
            .frame(height: 20)
            
        }
    }
}


#Preview {
    CarouselView(
        items: [
            .init(image: "usa", title: "USA", subtitle: "New York", backgroundColor: .blue),
            .init(image: "france", title: "France", subtitle: "Paris", backgroundColor: .purple),
            .init(image: "japan", title: "Japan", subtitle: "Tokyo", backgroundColor: .red)
        ]
    )
}
