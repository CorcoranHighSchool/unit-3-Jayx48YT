//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by David Armando Parra on 4/26/23.
//


import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: SportType
}

enum SportType: Character {
    case running = "🏃‍♂️", football = "🏈", baseketball = "🏀", baseball = "⚾️"
    
    var definition: String {
        switch self {
        case .running:
            return "You are incredibly outgoing. You are a strong person pusing through the obstilces that are coming throughout your run"
        case .football:
            return "You are a strong person pusing through the people in front of people blocking your way"
        case .baseketball:
            return "You are an all star player pushing for your team bring them to the championship round"
        case .baseball:
            return "You are moving on because your team has hit so many home runs"
        }
    }
}


