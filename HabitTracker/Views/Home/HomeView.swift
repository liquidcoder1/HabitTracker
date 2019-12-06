//
//  HomeView.swift
//  HabitTracker
//
//  Created by John Kulimushi on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileView()
                
                ForEach(Habit.getAll()) { habit  in
                    HabitRow(habit: habit).frame(height: 80)
                }
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
