//
//  GrandientButton.swift
//  ModelSheetSimple
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct GrandientButton: View {
    var text: String = "Text here"
    var gradient: Array<Color> = [Color(.purple), Color(.blue)]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .font(.headline)
            }
            .frame(width: 335, height: 50, alignment: .center)
            .background(LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing))
            .clipShape(.rect(cornerRadius: 16))
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    GrandientButton()
}
