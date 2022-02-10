//
//  Question.swift
//  Quizzet
//
//  Created by Martin Smith on 10/02/2022.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
