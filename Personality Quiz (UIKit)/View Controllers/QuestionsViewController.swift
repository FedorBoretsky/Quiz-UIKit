//
//  QuestionsViewController.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 18.02.2022.
//

import UIKit

class QuestionsViewController: UIViewController
{
    // MARK: - Outlets
    
    @IBOutlet weak var quizProgressBar: UIProgressView!
    
    @IBOutlet weak var questionWording: UILabel!
    
    @IBOutlet var choiceControls: [UIStackView]!
    
    @IBOutlet weak var singleChoiceControls: UIStackView!
    @IBOutlet weak var multipleChoiceControls: UIStackView!
    @IBOutlet weak var rangeChoiceControls: UIStackView!
    
    
    // MARK: - State
    
    var currentQuestionIndex = 0 {
        didSet {
            if currentQuestionIndex < Question.list.count {
                updateUI()
            } else {
                performSegue(withIdentifier: "gotoResult", sender: nil)
            }
        }
    }
    
    var currentQuestion: Question {
        Question.list[currentQuestionIndex]
    }
    
    var currentAnswers: [Answer] {
        currentQuestion.answers
    }
    
    var quizCollectedResponses: [Answer] = []
    

    // MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - Update
    
    func updateUI() {
        
        // Quiz progress
        let progressStep: Float = 1.0 / Float(Question.list.count)
        quizProgressBar.progress = Float(currentQuestionIndex) * progressStep + progressStep / 4
        
        // Number and the text of question.
        self.title = "Вопрос \(currentQuestionIndex + 1) из \(Question.list.count)"
        questionWording.text = currentQuestion.text
        
        // Response controls.
        choiceControls.forEach{ $0.isHidden = true }
        switch currentQuestion.responseType {
        case .singleChoice:
            showSingleChoice()
        case .multipleChoice:
            showMultipleChoice()
        case .rangeChoice:
            showRangeChoice()
        }
    }
    
    func showSingleChoice() {
        singleChoiceControls.isHidden = false
    }
    
    func showMultipleChoice() {
        multipleChoiceControls.isHidden = false
    }
    
    func showRangeChoice() {
        rangeChoiceControls.isHidden = false
    }
    
    // MARK: - Interactions
    
    @IBAction func answered() {
        currentQuestionIndex += 1
    }
}
