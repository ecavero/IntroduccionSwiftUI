//
//  MiVStackView.swift
//  IntroduccionSwiftUI
//
//  Created by user278712 on 9/9/25.
//

import SwiftUI

struct MiVStackView: View {
    var body: some View {
        VStack() {
            Text("Isil")
            Text("World")
                .font(.system(size: 24,
                              weight: .ultraLight)
                )
        }
        
    }
}

#Preview {
    MiVStackView()
}
