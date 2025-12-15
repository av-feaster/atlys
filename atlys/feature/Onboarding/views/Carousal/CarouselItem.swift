//
//  CarouselItem.swift
//  atlys
//
//  Created by Aman Verma on 15/12/25.
//


import SwiftUI

struct CarouselItem: Identifiable, Equatable {
    let id = UUID()
    let image: String
    let title: String
    let subtitle: String
    let backgroundColor: Color
    
    
    static func getAllData() -> [CarouselItem] {
        [
            CarouselItem( image: "malaysia", title: "Malaysia", subtitle: "12K+ Visas on Atlys", backgroundColor: .clear),
            CarouselItem( image: "dubai", title: "Dubai", subtitle: "3K+ Visas on Atlys", backgroundColor: .clear),
            CarouselItem( image: "paris", title: "Paris", subtitle: "1k Visas on Atlys", backgroundColor: .clear),
            
        ]
    }
}
