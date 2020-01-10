//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Mohammad Agung on 10/01/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let questionArray = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    var questionNumber = 0
    var correctAnswers = 0
    
    func getQuestion() -> String {
        return questionArray[questionNumber].question
    }
    
    func getAnswers() -> [String] {
        return questionArray[questionNumber].answer
    }
    
    mutating func cekAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == questionArray[questionNumber].correct {
            correctAnswers += 1
            return true
        } else {
            return false
        }
    }
    
    func getProgress() -> Float {
        return Float(questionNumber+1) / Float(questionArray.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber+1 < questionArray.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            correctAnswers = 0
        }
    }
    
    func getScore() -> String {
        return "Score : \(correctAnswers) / \(questionArray.count)"
    }
}
