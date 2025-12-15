//
//  OrDivider.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//

import SwiftUI

struct OrDivider: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.3))
            Text("or")
                .foregroundColor(.gray)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.3))
        }
    }
}
