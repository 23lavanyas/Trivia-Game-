//
//  TriviaGameViewController.swift
//  Trivia Game!
//
//  Created by 23LavanyaSubramanian on 7/18/19.
//  Copyright © 2019 Lavanya Subramanian. All rights reserved.
//

import UIKit

class TriviaGameViewController: UIViewController {

    var questions = ["Hg is the chemical symbol of what element?", "According to Greek mythology, who was the first woman on earth?", "Who was the US president during WW2?", "Who are Prince William's kids?", "Where is the Bermuda Triangle?", "How many bones are in the human body?", "Which city is known as the City of Love?", "Who created Tom and Jerry?", "In Home Alone, when was Kevin left alone?", "What is the rarest eye color for redheads?", "Which country owns every panda in the world?"]
    var answers = ["Mercury", "Pandora", "Franklin Roosevelt", "Prince George and Princess Charlotte", "In the western part of the North Atlantic Ocean", "206", "Paris", "William Hanna and Joseph Barbara", "During Christmas break", "Blue", "China"]
    var currQn = 0
    var score = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var endOfGameMessage: UILabel!
    @IBOutlet weak var userAnswerTextField: UITextField!
    @IBOutlet weak var validationLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currQn]
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    @IBAction func checkButtonClick(_ sender: Any) {
        if(userAnswerTextField.text == "") {
            validationLabel.text = "Please enter an answer."
            return
        }
        let userAnswer = userAnswerTextField.text
        let correctAnswer = answers[currQn]
        
        if(userAnswer!.caseInsensitiveCompare(correctAnswer) == .orderedSame) {
        validationLabel.text = "Good job!"
        score += 1
        } else {
            validationLabel.text = "Oops! The correct answer is actually \(correctAnswer)."
        }
    currQn += 1
        if (currQn >= questions.count) {
            if (score > questions.count/2) {
            endOfGameMessage.text = "Congratulations! You've completed this trivia game. Go back to home for another shot!"
            } else {
                endOfGameMessage.text = "Don't worry, practice makes perfect :) Go back to home for another shot!"
            }
        }
        else {
            questionLabel.text = questions[currQn]
        }
        userAnswerTextField.text = ""
        scoreLabel.text = "Score: \(String(score))"
}
}
