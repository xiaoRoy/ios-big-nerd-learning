//
//  ViewController.swift
//  Quiz
//
//  Created by Jerry Li on 2021/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var quesitonLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    private let questions:[String] = [
        "What is 7 + 7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    private let answers:[String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    private var currentQuestionIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        quesitonLabel.text = questions.first

    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count  {
            currentQuestionIndex = 0
        }
        let question = questions[currentQuestionIndex]
        quesitonLabel.text = question
        answerLabel.text = "???"
    }
    
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}

