//
//  Quiestion+List.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 20.02.2022.
//

extension Question {
    static let list: [Question] = [
        Question(text: "Какую еду вы предпочитаете?", responseType: .singleChoice, answers: [
            Answer(text: "Стейк", animalType: .dog),
            Answer(text: "Рыбу", animalType: .cat),
            Answer(text: "Морковку", animalType: .rabbit),
            Answer(text: "Кукурузу", animalType: .turtle),
        ]),
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
}
