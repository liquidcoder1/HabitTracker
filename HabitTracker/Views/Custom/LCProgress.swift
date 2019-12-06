//
//  LCProgress.swift
//  HabitTracker
//
//  Created by John K. on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct LCProgress: View {
    
    var progressColor = Color.accentColor
   @Binding var progress: CGFloat
    
    var body: some View {
        GeometryReader { gr in
            ZStack(alignment: .leading) {
                Capsule().foregroundColor(Color.backgroundColor)
                Capsule().frame(width: gr.size.width * min(self.progress, 1)).foregroundColor(self.progressColor)
            }
        }.frame(height: 15)
    }
}

struct LCProgress_Previews: PreviewProvider {
    static var previews: some View {
        LCProgress(progress: .constant(0.7))
    }
}
