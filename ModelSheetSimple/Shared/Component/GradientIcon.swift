//
//  GradientIcon.swift
//  ModelSheetSimple
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct GradientIcon: View {
    var icon: String =  "envelope.fill"
    var gradient: Array<Color> = [Color(.purple), Color(.red), Color(.orange)]
    
    var body: some View {
        ZStack {
            Image(systemName: icon)
                .frame(width: 36, height: 36)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
                .clipShape(.rect(cornerRadius: 12))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    GradientIcon()
}
