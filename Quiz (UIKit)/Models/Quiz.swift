//
//  Quiz.swift
//  Quiz (UIKit)
//
//  Created by Fedor Boretsky on 22.10.2022.
//

import Foundation

struct Quize {
    
    let startTitle: String
    
    
    enum Candidate: String {
        case pawn = "Пешка"
        case king = "Король"
        case bishop = "Слон"
        case queen = "Ферзь"
    }

    struct Question {
        let text: String
        let responseType: ResponseType
        let answers: [PossibleAnswer]
    }

    struct PossibleAnswer {
        let text: String
        var isSelected: Bool
        let votes: [Candidate]
    }
    
    
}
