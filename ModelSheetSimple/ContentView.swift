//
//  ContentView.swift
//  ModelSheetSimple
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct ContentView: View {
    @State private var showNormalSheet = false
    @State private var showCustomSheet = false
    
    var body: some View {
        ZStack {
            
            if showCustomSheet {
                Rectangle()
                    .foregroundStyle(Color.black.opacity(0.5))
                    .ignoresSafeArea(.all)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showCustomSheet = false
                        }
                    }
                
                SignInView()
                    .frame(height: 450)
                    .clipShape(.rect(cornerRadius: 20))
                    .padding()
            } else {
                if !showCustomSheet {
                    VStack(spacing: 25) {
                        GrandientButton(text: "Normal Modal")
                            .onTapGesture {
                                showNormalSheet = true
                            }
                            .sheet(isPresented: $showNormalSheet, content: {
                                SignInView()
                            })
                        
                        
                        GrandientButton(text: "Custom Modal sheet")
                            .onTapGesture {
                                withAnimation(.bouncy) {
                                    showCustomSheet = true
                                }
                            }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
