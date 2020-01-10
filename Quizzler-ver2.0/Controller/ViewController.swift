//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Mohammad Agung Pambudi on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSkor: UILabel!
    @IBOutlet weak var labelPertanyaan: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let correctAnswer = quizBrain.cekAnswer(userAnswer)
        
        if correctAnswer == true {
            sender.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else if correctAnswer == false {
            sender.backgroundColor = #colorLiteral(red: 0.7516429424, green: 0, blue: 0, alpha: 1)
        }
        
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        labelSkor.text = quizBrain.getScore()
        labelPertanyaan.text = quizBrain.getQuestion()
        progressBar.progress = quizBrain.getProgress()
        
        trueButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        falseButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
    }
}

