//
//  Question.swift
//  Quizzet
//
//  Created by Martin Smith on 10/02/2022.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
