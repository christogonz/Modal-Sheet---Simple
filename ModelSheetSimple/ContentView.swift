//
//  ContentView.swift
//  ModelSheetSimple
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    
    var body: some View {
        HStack {
            GrandientButton(text: "Sign in")
                .onTapGesture {
                    showSheet = true
            }
        }
        .sheet(isPresented: $showSheet, content: {
            SignInView()
        })
    }
}

#Preview {
    ContentView()
}
