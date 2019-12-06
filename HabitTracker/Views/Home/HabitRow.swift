//
//  HabitView.swift
//  HabitTracker
//
//  Created by John K. on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct HabitRow: View {
    
    var habit: Habit = Habit(id: UUID(), type: .Emotional, progress: 0.7, icon: "benchpress", color: "teal")
    
    var body: some View {
        GeometryReader { gr in
            HStack{
                Image(self.habit.icon).foregroundColor(Color(self.habit.color))
                    .frame(width: 40, height: 40)
                    .background(Color.backgroundColor)
                    .cornerRadius(20)
                    
                VStack(alignment: .leading) {
                    HStack {
                        Text(self.habit.type.toString())
                        Spacer()
                        Text("\(self.habit.progress * 100)%")
                    }
                    LCProgress(progressColor: Color(self.habit.color), progress: .constant(self.habit.progress))
                }
                }.padding().background(Color.darkerColor).cornerRadius(15)
        }
    }
}

struct HabitView_Previews: PreviewProvider {
    static var previews: some View {
        HabitRow()
    }
}
