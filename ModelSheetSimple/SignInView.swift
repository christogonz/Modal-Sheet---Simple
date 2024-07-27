//
//  SignInView.swift
//  ModelSheetSimple
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack() {
            VStack(spacing: 20) {
                Text("Sign In")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: 335, alignment: .leading)
                
                Text("Acces to 120+ hours of course, tutorials and livestreams")
                    .font(.subheadline)
                    .frame(maxWidth: 335, alignment: .leading)
                    .opacity(0.7)
                
                HStack {
                    GradientIcon()
                    TextField("Email", text: $email)
                }
                .padding(8)
                .frame(width: 335, height: 52, alignment: .leading)
                .clipShape(.rect(cornerRadius: 20))
                
                HStack {
                    GradientIcon()
                    TextField("Password", text: $password)
                }
                .padding(8)
                .frame(width: 335, height: 52, alignment: .leading)
                .clipShape(.rect(cornerRadius: 20))
                
                GrandientButton(text: "Sign In")
                
                Divider()
                    .padding()
                
                HStack {
                    Text("Dot't have an account?")
                        .foregroundStyle(.secondary)
                    Button("Sign up") {}
                    Spacer()
                }
                
                HStack {
                    Text("Forgot password?")
                        .foregroundStyle(.secondary)
                    Button("Reset Password") {}
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    SignInView()
}
