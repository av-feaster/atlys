//
//  SocialLoginButtons.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//

import SwiftUI

struct SocialLoginButtons: View {
    var body: some View {
        HStack(spacing: 20) {
            SocialButton(icon: "google-logo", isSystem: false)
            SocialButton(icon: "apple.logo", isSystem: true)
            SocialButton(icon: "envelope.fill", isSystem: true)
        }
    }
}

struct SocialButton: View {
    let icon: String
    let isSystem: Bool

    var body: some View {
        Button(action: {}) {
            Group {
                if isSystem {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                } else {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
            }
            
            .foregroundColor(isSystem ? .black : nil)
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }

    
}





#Preview {
    Onboarding()
}
