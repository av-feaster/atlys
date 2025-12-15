//
//  CarouselCard.swift
//  atlys
//
//  Created by Aman Verma on 15/12/25.
//

import SwiftUI

struct CarouselCard: View {
    let item: CarouselItem
    let isActive: Bool

    var body: some View {
        ZStack(alignment: .topTrailing) {

            // MARK: Background Image
            item.backgroundColor.ignoresSafeArea()
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: 280, height: 280)
                .clipped()

            // MARK: Gradient overlay
            LinearGradient(
                gradient: Gradient(colors: [
                    .clear,
                    .black.opacity(0.65)
                ]),
                startPoint: .center,
                endPoint: .bottom
            )

            // MARK: Top-right icon
            
            CheckIcon()
                .padding(12)
                .opacity(isActive ? 1 : 0)

            // MARK: Footer
            VStack(alignment: .leading, spacing: 8) {
                Text(item.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal, 16)
                    
                    .foregroundColor(.white)
                    .opacity(isActive ? 1 : 0)

                Text(item.subtitle)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .padding(.vertical, 6)
                    .background(Color.primaryPurple)
                    .foregroundColor(.white)
                    .clipShape(OneSidedCapsule())
                    .opacity(isActive ? 1 : 0)
            }
            .padding(.bottom,16)
            
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottomLeading
            )
        }
        .frame(width: 280, height: 280)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .scaleEffect(isActive ? 1.0 : 0.92)
        .shadow(
            color: .black.opacity(isActive ? 0.3 : 0),
            radius: isActive ? 16 : 0,
            x: 0,
            y: isActive ? 10 : 0
        )
        .animation(.spring(response: 0.35, dampingFraction: 0.85), value: isActive)
    }
}






struct CardFooter: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text(subtitle)
                .font(.caption)
                .fontWeight(.semibold)
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.bottom, 8)
    }
}


struct CheckIcon: View {
    var body: some View {
        Image(systemName: "checkmark.circle.fill")
            .font(.title2)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(Color.black.opacity(0.4))
                    .frame(width: 36, height: 36)
            )
    }
}



#Preview {
    CarouselCard(item: .init(image: "image1", title: "Title 1", subtitle: "Subtitle 1", backgroundColor: .blue), isActive: true)
}
