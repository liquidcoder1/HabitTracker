//
//  Habit.swift
//  OnboardingScreen
//
//  Created by John K on 05/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

enum HabitType: String, CaseIterable {
    case Physical
    case Mental
    case Spiritual
    case Emotional
    
    func toString() -> String {
        return self.rawValue
    }
}

struct Habit: Identifiable {
    
    let id: UUID
    let type: HabitType
    let progress: CGFloat
    var icon: String
    var color: String
    
    private mutating func setIconAndColor(from type: HabitType) {
        switch type {
        case .Physical:
            self.icon = "runningman"
            self.color = "shallowOrange"
        case .Mental:
           self.icon = "meditation"
           self.color = "teal"
        case .Spiritual:
           self.icon = "walkMan"
           self.color = "purple"
        case .Emotional:
           self.icon = "heart"
           self.color = "lightBlue"
            
        }
    }
    
    static func getAll() -> [Habit] {
        HabitType.allCases.map { type in
            var habit = Habit(id: UUID(), type: type, progress: CGFloat.random(in: 0...1), icon: "", color: "")
            habit.setIconAndColor(from: type)
            return habit
        }
    }
    
}
