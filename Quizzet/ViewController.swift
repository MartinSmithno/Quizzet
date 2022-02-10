//
//  ViewController.swift
//  Quizzet
//
//  Created by Martin Smith on 09/02/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quiz = [
        Question(text: "Four + Two is Equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than One", answer: "True"),
        Question(text: "Three + Eight is less than Ten", answer: "False")
    ]

/*  Question(text: "Four + Two is Equal to Six.", answer: "True") */
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
//      let actualQuestion = quiz[questionNumber]
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Right!")
        }else{
            print("Wrong!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        UpdateUI()
    }
    
    func UpdateUI(){
        questionLabel.text = quiz[questionNumber].text
    }
    
}

