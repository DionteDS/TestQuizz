//
//  ViewController.swift
//  TestQuizz
//
//  Created by Dionte Silmon on 12/17/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    var allQuestions = QuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }

    
    
    // MARK: - True or False Buttons
    @IBAction func answerButton(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    //MARK: - Update the UI
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "\(questionNumber + 1) / 20"
        progressBar.frame.size.width = (view.frame.size.width) / 20 * CGFloat(questionNumber + 1)
        
    }
    
    // Select the next question
    // else if the user has reach the last question ask to restart
    func nextQuestion() {
        
        if questionNumber < 20 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
            
        } else {
            let alert = UIAlertController(title: "Good Job", message: "You have finished all questions would you like to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (restart) in
                self.startOver()
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (cancel) in
                self.questionNumber = 19
                self.questionLabel.text = "Your final score: \(self.score)"
                let dely = 4
                // When the user taps on the cancel button
                // Display their score
                // After 5 seconds restart the program.
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(dely)) {
                    self.startOver()
                }
            }
            
            restartAction.setValue(UIColor.blue, forKey: "titleTextColor")
            cancelAction.setValue(UIColor.red, forKey: "titleTextColor")
            
            alert.addAction(restartAction)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    // Check to see if the user got the question right or wrong
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if pickedAnswer == correctAnswer {
            ProgressHUD.showSuccess("Correct!")
            score += 1
        } else {
            ProgressHUD.showError("Wrong!")
            
        }
    }
    
    
    // Reset everything
    func startOver() {
        
        score = 0
        questionNumber = 0
        let shuffleQuestion = allQuestions.list.shuffled() // Shuffle the questions
        allQuestions.list = shuffleQuestion
        nextQuestion()
    }

}

