//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Mohammad Agung on 10/01/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answer: [String]
    var correct: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answer = a
        correct = correctAnswer
    }
}
