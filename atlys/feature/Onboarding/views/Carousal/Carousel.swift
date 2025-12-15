//
//  Carousel.swift
//  atlys
//
//  Created by Aman Verma on 15/12/25.
//


import SwiftUI

struct Carousel<Item: Identifiable & Equatable, Content: View>: View {

    // MARK: - Properties
    let items: [Item]
    @Binding var currentPage: Int
    let content: (Item, Bool) -> Content

    // MARK: - State
    @State private var activeIndex: Int?

    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -52) {
                ForEach(items.indices, id: \.self) { index in
                    let item = items[index]
                    let isActive = activeIndex == index

                    content(item, isActive)
                        .compositingGroup()
                        .zIndex(isActive ? 1 : 0)
                        .scrollTransition(.interactive, axis: .horizontal) { view, phase in
                            view
                                .scaleEffect(0.92 + damping(phase) * 0.08)
                                .opacity(0.85 + damping(phase) * 0.15)
                                .offset(y: -clamped(phase) * 4)
                        }
                        .id(index)
                }
            }
            .padding(.horizontal, 24)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .scrollBounceBehavior(.basedOnSize)
        .scrollPosition(id: $activeIndex)
        .onChange(of: activeIndex) { _, newValue in
            guard let newValue else { return }
            currentPage = newValue
        }
        .onAppear {
            activeIndex = 0
            currentPage = 0
        }
    }

    // MARK: - Transition Helpers

    private func clamped(_ phase: ScrollTransitionPhase) -> CGFloat {
        min(abs(phase.value), 1)
    }

    private func damping(_ phase: ScrollTransitionPhase) -> CGFloat {
        1 - pow(clamped(phase), 1.6)
    }
}
