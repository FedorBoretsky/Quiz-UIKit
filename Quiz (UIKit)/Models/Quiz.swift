//
//  Quiz.swift
//  Quiz (UIKit)
//
//  Created by Fedor Boretsky on 22.10.2022.
//

import Foundation

struct Quize {
    
    struct Question {
        let text: String
        let responseType: ResponseType
        let answers: [Answer]
    }

    struct Answer {
        let text: String
        let badgeOrderInfo: BadgeOrderInfo
    }
    
}
