//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Mark Meretzky on 12/30/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//

import Foundation;

enum AnimalType: Character {
    case dog    = "🐶";
    case cat    = "🐱";
    case rabbit = "🐰";
    case turtle = "🐢";
    
    var definition: String {   //computed property
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends.";
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms.";
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy.";
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race.";
        }
    }
}

struct Answer {
    var text: String;
    var type: AnimalType;
}

enum ResponseType {
    case single;    //Press 1 out of 4 buttons.
    case multiple;  //Set 4 switches.
    case ranged;    //Slide a slider.
}

struct Question {
    var text: String;
    var type: ResponseType;
    var answers: [Answer];
}
