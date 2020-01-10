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
    
    let questionArray = [["2 + 2 = 4", "True"], ["3 * 4 = 12", "True"], ["9 / 3 = 0", "False"]]
    var questionNumber = 0
    var userAnswer = ""
    var correctAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        userAnswer = sender.currentTitle!
        correctAnswer = questionArray[questionNumber][1]
        
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
        labelPertanyaan.text = questionArray[questionNumber][0]
        
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

