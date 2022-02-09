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
        ["Four + Two is Equal to Six.", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        }else{
            print("Wrong!")
        }
        
        if questionNumber < 3 {
            questionNumber += 1
            UpdateUI()
        }
        
    }
    
    func UpdateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

