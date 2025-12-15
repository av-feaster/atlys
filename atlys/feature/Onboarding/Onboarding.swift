//
//  Onboarding.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        
        VStack(spacing: 8) {
            Spacer()
            LogoHeader().padding(.top)
            CarouselView(items: CarouselItem.getAllData())
            TextSection().padding(.horizontal)
                .padding(.top,-12)
            PhoneInputAction().padding(.horizontal)
            OrDivider().padding(.horizontal)
            SocialLoginButtons().padding(.horizontal)
            Spacer()
            TermsText().padding(16)
        }.padding(.bottom, 16)
        
        
        
    }
}

#Preview {
    Onboarding()
}
