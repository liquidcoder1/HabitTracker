//
//  LCTextfield.swift
//  HabitTracker
//
//  Created by John K. on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct LCTextfield: View {
    
    @Binding var value: String
    var placeholder = "Placeholder"
    var icon = Image(systemName: "person.crop.circle")
    var color = Color("offColor")
    var isSecure = false
    
    var body: some View {
        HStack {
            
            if isSecure{
                SecureField(placeholder, text: self.$value).padding()
            } else {
                TextField(placeholder, text: self.$value, onEditingChanged: { value in
                                          }).padding()
            }
            
            icon.imageScale(.large)
                .padding()
                .foregroundColor(color)
            }.background(color.opacity(0.2)).clipShape(Capsule())
    }
}

struct LCTextfield_Previews: PreviewProvider {
    static var previews: some View {
        LCTextfield(value: .constant(""))
    }
}
