//
//  AnimalType.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 20.02.2022.
//

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐈"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var description: String {
        switch self {
        case .dog:
            return "Вы черезвычайно активны. Вы окружаете себя теми, кого любите и наслаждаетесь взаимодействием с друзьями."
        case .cat:
            return "Вы бесшабашный, но кроткий. Вы предпочитаете гулять сами по себе."
        case .rabbit:
            return "Вам нравится всё мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Вы умнее ваших лет, фокусируетесь на цели. Вы знаете, что медленные, но упорные всегда выигрывают."
        }
    }
}
