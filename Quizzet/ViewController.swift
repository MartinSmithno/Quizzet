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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = "Four + Two is Equal to Six"
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
}

