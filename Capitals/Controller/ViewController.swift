//
//  ViewController.swift
//  Capitals
//
//  Created by Macbook on 01/02/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
     @IBOutlet weak var scoreLabel: UILabel!
     @IBOutlet weak var questionLabel: UILabel!
     @IBOutlet weak var trueButton: UIButton!
     @IBOutlet weak var falseButton: UIButton!
     @IBOutlet weak var progressBar: UIProgressView!
    
     var brain = Brain()
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            questionLabel.text = brain.getQuestionText()
            // Do any additional setup after loading the view.
          
        }

        
          
        @IBAction func answerButtonPressed(_ sender: UIButton) {
            
            let userAnswer = sender.currentTitle!
                  
                  let userGotItRight = brain.checkAnswer(userAnswer: userAnswer)
                  
                  if userGotItRight {
                      sender.backgroundColor = UIColor.green
                  } else {
                      sender.backgroundColor = UIColor.red
                  }
                  
                  brain.nextQuestion()
                  
                  Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
              }
              
              @objc func updateUI() {
                  questionLabel.text = brain.getQuestionText()
                  progressBar.progress = brain.getProgress()
                  scoreLabel.text = "Score: \(brain.getScore())"
                  
                  trueButton.backgroundColor = UIColor.clear
                  falseButton.backgroundColor = UIColor.clear
    }

}
