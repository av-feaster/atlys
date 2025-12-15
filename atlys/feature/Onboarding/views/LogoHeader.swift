//
//  LogoHeader.swift
//  atlys
//
//  Created by Aman Verma on 13/12/25.
//

import SwiftUI

struct LogoHeader: View {
    var body: some View {
        VStack(spacing: 4) {
            Text("atlys")
                .font(.system(size: 40, weight: .bold))
            
            Text("visas on time")
                .font(.subheadline)
                .foregroundColor(.primaryPurple)
        }
    }
}
