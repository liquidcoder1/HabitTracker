//
//  LoginView.swift
//  OnboardingScreen
//
//  Created by John K. on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Image("Logo")
            Text("Login").font(.title).bold()
            VStack {
                LCTextfield(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"))
                LCTextfield(value: self.$password, placeholder: "Password", icon: Image(systemName: "lock"), isSecure: true)
                LCButton(text: "Login") {
                    
                }
            }
            
            Button(action: {
            }) {
              HStack {
                Text("Don't have an account?").accentColor(Color.accentColor)
                  }
              }
            
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
