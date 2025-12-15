//
//  PhoneInputAction.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//

import SwiftUI

struct PhoneInputAction: View {
    @State private var phone = ""

    // MARK: - Validation
    private var isValidPhone: Bool {
        phone.count == 10
    }

    var body: some View {
        VStack(spacing: 12) {

            HStack {
                Text("🇮🇳 +91")
                    .font(.headline)
                    .padding(.leading)

                Image("drop-down")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .padding(.leading, -4)

                TextField("Enter mobile number", text: $phone)
                    .keyboardType(.numberPad)
                    .padding(.vertical, 12)
                    .onChange(of: phone) { _, newValue in
                        phone = String(newValue.filter { $0.isNumber }.prefix(10))
                    }
            }
            .frame(height: 55)
            .background(Color(.systemGray6))
            .cornerRadius(12)

            
            Button(action: {
                
            }) {
                Text("Continue")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        Color.primaryPurple
                            .opacity(isValidPhone ? 1.0 : 0.5)
                    )
                    .cornerRadius(12)
            }
            .disabled(!isValidPhone)
            .animation(.easeInOut(duration: 0.2), value: isValidPhone)
        }
    }
}


#Preview {
    Onboarding()
}
