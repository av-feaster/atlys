//
//  PageControl.swift
//  atlys
//
//  Created by Aman Verma on 15/12/25.
//


import UIKit
import SwiftUI

struct PageControl: UIViewRepresentable {
    let numberOfPages: Int
    @Binding var currentPage: Int

    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.currentPageIndicatorTintColor = .label
        control.pageIndicatorTintColor = .systemGray4
        control.isUserInteractionEnabled = false
        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}




import SwiftUI



struct OneSidedCapsule: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = rect.height / 2

        // Start top-left
        path.move(to: CGPoint(x: 0, y: 0))

        // Top edge
        path.addLine(to: CGPoint(x: rect.width - radius, y: 0))

        // Right half-circle
        path.addArc(
            center: CGPoint(x: rect.width - radius, y: rect.height / 2),
            radius: radius,
            startAngle: .degrees(-90),
            endAngle: .degrees(90),
            clockwise: false
        )

        // Bottom edge
        path.addLine(to: CGPoint(x: 0, y: rect.height))

        // Close shape
        path.closeSubpath()

        return path
    }
}



#Preview{
    OneSidedCapsule()
        .stroke(.black, lineWidth: 4)
        .frame(width: 200, height: 80)
        .padding()
}
