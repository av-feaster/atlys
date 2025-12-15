//
//  TermsText.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//


import SwiftUI

struct TermsText: View {
    var body: some View {
        (
            Text("By continuing you agree to our ")
                .foregroundColor(.secondary)
            + Text("Terms")
                .underline()
            + Text(" and ")
                .foregroundColor(.secondary)
            + Text("Policy")
                .underline()
        )
        .font(.caption)
        .onTapGesture { location in
            // fallback tap if needed
        }
    }
}
