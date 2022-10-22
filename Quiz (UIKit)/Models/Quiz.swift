//
//  Quiz.swift
//  Quiz (UIKit)
//
//  Created by Fedor Boretsky on 22.10.2022.
//

import Foundation

struct Quize {
    
    static var shared = Quize()
    
    let startTitle = "Какая у меня фигура, тренер?"
    let questions: [Question] = [
        Question(text: "Много ли вы едите?",
                 responseType: .singleChoice,
                 answers: [
                    Answer(text: "Только чтобы выжить", votes: [.king]),
                    Answer(text: "Мало", votes: [.pawn]),
                    Answer(text: "Нормально", votes: [.bishop, .queen]),
                    Answer(text: "Постоянно", votes: [.queen]),
                 ]),
        Question(text: "Много ли вы двигаетесь?",
                 responseType: .segmentedChoice,
                 answers: [
                    Answer(text: "Мало", votes: [.king]),
                    Answer(text: "Мало+", votes: [.pawn]),
                    Answer(text: "Много-", votes: [.bishop]),
                    Answer(text: "Много", votes: [.queen]),
                 ]),
    ]
    
    enum Candidate: String {
        case pawn = "Пешка"
        case king = "Король"
        case bishop = "Слон"
        case queen = "Ферзь"
        
        var name: String { self.rawValue }
        var description: String {
            switch self {
            case .pawn: return ""
            case .king: return ""
            case .bishop: return ""
            case .queen: return ""
            }
        }
    }
    
    struct Question {
        let text: String
        let responseType: ResponseType
        let answers: [Answer]
    }
    
    struct Answer {
        let text: String
        let votes: [Candidate]
        var isSelected = false
    }
    
    
}
