//
//  Quiestion+List.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 20.02.2022.
//

extension Question {
    static let list: [Question] = [
        Question(text: "Количество беджей", responseType: .naturalNumberChoice, answers: numberOfBadgesForSliders()),
        Question(text: "Что вы любите делать?", responseType: .multipleChoice, answers: [
            Answer(text: "Плавать", animalType: .turtle),
            Answer(text: "Спать", animalType: .cat),
            Answer(text: "Обниматься", animalType: .rabbit),
            Answer(text: "Есть", animalType: .dog),
        ]),
        Question(text: "Любите ли вы поездки на машине?", responseType: .rangeChoice, answers: [
            Answer(text: "Ненавижу", animalType: .cat),
            Answer(text: "Нервничаю", animalType: .rabbit),
            Answer(text: "Не замечаю", animalType: .turtle),
            Answer(text: "Обожаю", animalType: .dog),
        ]),
    ]
    
    fileprivate static func numberOfBadgesForSliders() -> [Answer] {
        var result: [Answer]
        
        result = []
        
        
        
        return result
    }
}
