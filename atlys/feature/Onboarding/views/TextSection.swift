//
//  TextSection.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//
import SwiftUI

struct TextSection: View {
    var body: some View {
        VStack(spacing: 2) {
            Text("Get Visas")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Text("On Time")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .padding(.top)
    }
}
