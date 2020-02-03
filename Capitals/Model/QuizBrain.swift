//
//  Brain.swift
//  Capitals
//
//  Created by Macbook on 02/02/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import Foundation

struct Brain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Capitals(q: "Moskow is a capital of Russian Federation?", a: "True"),
        Capitals(q: "Tokio is a capital of Chinese Republic?", a: "False"),
        Capitals(q: "Tel Aviv is a capital of Israel?", a: "False"),
        Capitals(q: "Minsk is a capital of Belarus?", a: "True"),
        Capitals(q: "New York is a capital of USA?", a: "False"),
        Capitals(q: "Buenos Aires is a capital of Argentina?", a: "True"),
        Capitals(q: "Brasilia is a capital of Brazil?", a: "True"),
        Capitals(q: "Oslo is a capital of Sweden?", a: "False"),
        Capitals(q: "Stockholm is a capital of Estonia?", a: "False"),
        Capitals(q: "Vilnius is a capital of Lithuania?", a: "True"),
        Capitals(q: "Warsaw is a capital of Poland?", a: "True"),
        Capitals(q: "Belgrade is a capital of Romania?", a: "False")
        
    ]
    
   func getQuestionText() -> String {
           return quiz[questionNumber].text
       }
       
       func getProgress() -> Float {
           return Float(questionNumber) / Float(quiz.count)
       }
       
       mutating func getScore() -> Int {
           return score
       }
       
        mutating func nextQuestion() {
           
           if questionNumber + 1 < quiz.count {
               questionNumber += 1
           } else {
               questionNumber = 0
           }
       }
       
       mutating func checkAnswer(userAnswer: String) -> Bool {
           if userAnswer == quiz[questionNumber].answer {
               score += 1
               return true
           } else {
               return false
           }
       }
   }

