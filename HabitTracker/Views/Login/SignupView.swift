//
//  SignupView.swift
//  OnboardingScreen
//
//  Created by John Kulimushi on 05/12/2019.
//  Copyright © 2019 John Kulimushi. All rights reserved.
//

import SwiftUI

struct SignupView: View {
       
    @State private var email = ""
    @State private var password = ""
    @State private var confirmedPassword = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Image("Logo")
            Text("Sign Up").font(.title).bold()
            VStack {
                LCTextfield(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"))
                LCTextfield(value: self.$password, placeholder: "Password", icon: Image(systemName: "lock"), isSecure: true)
                LCTextfield(value: self.$confirmedPassword, placeholder: "Confirm Password", icon: Image(systemName: "lock.rotation"), isSecure: true)
                LCButton(text: "Sign up") {
                    
                }
            }
            
            Button(action: {
            }) {
              HStack {
                Text("Already have an account?").accentColor(Color.accentColor)
                  }
              }
            
        }.padding()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
