//
//  QuestionBank.swift
//  TestQuizz
//
//  Created by Dionte Silmon on 12/17/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import Foundation

struct QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        let firstQuestion = Question(questionText: "Electrons are larger than molecules", answer: false)
        
        list.append(firstQuestion)
        
        list.append((Question(questionText: "The Atlantic Ocean is the biggest ocean on Earth.", answer: false)))
        
        list.append(Question(questionText: "The chemical make up food often changes when you cook it.", answer: true))
        
        list.append(Question(questionText: "Sharks are mammals.", answer: false))
        
        list.append(Question(questionText: "The human body has four lungs.", answer: false))
        
        list.append(Question(questionText: "Atoms are most stable when their outer shells are full.", answer: true))
        
        list.append(Question(questionText: "Filtration separates mixtures based upon their particle size.", answer: true))
        
        list.append(Question(questionText: "Venus is the closest planet to the Sun.", answer: false))
        
        list.append(Question(questionText: "Conductors have low resistance.", answer: true))
        
        list.append(Question(questionText: "Molecules can have atoms from more than one chemical element.", answer: true))
        
        list.append(Question(questionText: "Water is an example of a chemical element.", answer: false))
        
        list.append(Question(questionText: "The study of plants is known as botany.", answer: true))
        
        list.append(Question(questionText: "Mount Kilimanjaro is the tallest mountain in the world.", answer: false))
        
        list.append(Question(questionText: "Floatation separates mixtures based on density.", answer: true))
        
        list.append(Question(questionText: "Herbivores eat meat.", answer: false))
        
        list.append(Question(questionText: "Atomic bombs work by atomic fission.", answer: true))
        
        list.append(Question(questionText: "Molecules are chemically bonded.", answer: true))
        
        list.append(Question(questionText: "Spiders have six legs.", answer: false))
        
        list.append(Question(questionText: "Kelvin is a measure of temperature.", answer: true))
        
        list.append(Question(questionText: "The human skeleton is made up of less than 100 bones.", answer: false))
    }
    
}
