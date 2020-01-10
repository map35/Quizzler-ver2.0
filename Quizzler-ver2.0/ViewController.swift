//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Mohammad Agung Pambudi on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPertanyaan: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questionArray = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    
    var questionNumber = 0
    var userAnswer = ""
    var correctAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        userAnswer = sender.currentTitle!
        correctAnswer = questionArray[questionNumber].answer
        
        if questionNumber+1 < questionArray.count {
//            updateUI()
            
            questionNumber += 1
        } else {
//            updateUI()
            
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        labelPertanyaan.text = questionArray[questionNumber].question
        
        cekAnswer()
    }
    
    func cekAnswer() {
        if correctAnswer == "True" {
            trueButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            falseButton.backgroundColor = #colorLiteral(red: 0.7516429424, green: 0, blue: 0, alpha: 1)
            
//            print("yeay")
        } else if correctAnswer == "False" {
            trueButton.backgroundColor = #colorLiteral(red: 0.7516429424, green: 0, blue: 0, alpha: 1)
            falseButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            
//            print("sad")
        }
        
//        print(questionArray[questionNumber][0])
//        print(correctAnswer)
    }
}

