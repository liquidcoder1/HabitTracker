//
//  RecoverEmailView.swift
//  OnboardingScreen
//
//  Created by John K on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct RecoverEmailView: View {
    @State private var email = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Image("Logo")
            Text("Recover Password").font(.title).bold()
            VStack {
                LCTextfield(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"))
                LCButton(text: "Reset Password") {}
            }
            
            Button(action: {
            }) {
              HStack {
                Text("Cancel").accentColor(Color.accentColor)
                  }
              }
            
        }.padding()
    }

}

struct RecoverEmailView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverEmailView()
    }
}
