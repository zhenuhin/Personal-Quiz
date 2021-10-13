//
//  Answer.swift
//  Personal Quiz
//
//  Created by Александр Женухин on 13.10.2021.
//

struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
             return "Вам нравится быть с друзьями.Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь!"
        case .cat:
            return "Вы сами себе не уме. Вы цените одиночество и любите гулять сами по себе!"
        case .rabbit:
            return "Вы любите овощи. Вы здоровы и полны энергии!"
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях!"
        }
    }
}
