//
//  Questions.swift
//  PersonalityQuiz
//
//  Created by flaviaamorim on 04/03/21.
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
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Você é incrivelmente extrovertido. Você se cerca com as pessoas que ama e gosta de atividades com seus amigos."
        case .cat:
            return "Maligno, mas de temperamento brando, você gosta de fazer as coisas em seus próprios termos."
        case .rabbit:
            return "Você ama tudo que é macio. Você é saudável e cheio de energia."
        case .turtle:
            return "Você é sábio além da sua idade e se concentra nos detalhes. Devagar e sempre ganha a corrida."
        }
    }
}

