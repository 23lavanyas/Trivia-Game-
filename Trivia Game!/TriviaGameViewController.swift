//
//  TriviaGameViewController.swift
//  Trivia Game!
//
//  Created by 23LavanyaSubramanian on 7/18/19.
//  Copyright © 2019 Lavanya Subramanian. All rights reserved.
//

import UIKit

class TriviaGameViewController: UIViewController {

    var questions = ["Hg is the chemical symbol of what element?", "According to Greek mythology, who was the first woman on earth?", "Who was the US president during WW2?", "Who are Prince William's kids?", "Where is the Bermuda Triangle?"]
    var answers = ["Mercury", "Pandora", "Franklin Roosevelt", "Prince George and Princess Charlotte", "In the western part of the North Atlantic Ocean"]
    var currQn = 0
    
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
        } else {
            validationLabel.text = "Oops! The correct answer is actually \(correctAnswer)."
        }
    currQn += 1
        if (currQn >= questions.count) {
            endOfGameMessage.text = "Congratulations! You've completed this trivia game."
        }
        else {
            questionLabel.text = questions[currQn]
        }
        userAnswerTextField.text = ""
}
}