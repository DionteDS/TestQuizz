//
//  Question.swift
//  TestQuizz
//
//  Created by Dionte Silmon on 12/17/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import Foundation


struct Question {
    
    var questionText: String
    var answer: Bool
    
    init(questionText: String, answer: Bool) {
        self.questionText = questionText
        self.answer = answer
    }
    
}
