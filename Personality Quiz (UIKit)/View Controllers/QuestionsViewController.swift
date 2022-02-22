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
    
    @IBOutlet weak var singleChoiceForm: UIStackView!
    @IBOutlet var singleChoiceItems: [UIButton]!
    
    @IBOutlet weak var multipleChoiceForm: UIStackView!
    @IBOutlet var multipleChioceItems: [UIStackView]!
    
    @IBOutlet weak var rangeChoiceForm: UIStackView!
    @IBOutlet weak var rangeStartLabel: UILabel!
    @IBOutlet weak var rangeFinishLabel: UILabel!
    
    
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
        
        // Quiz progress bar
        let progressStep: Float = 1.0 / Float(Question.list.count)
        let currentProgress = Float(currentQuestionIndex) * progressStep + progressStep / 4
        quizProgressBar.setProgress(currentProgress, animated: true)
        
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
        singleChoiceForm.isHidden = false
        singleChoiceItems.forEach{ $0.isHidden = true }
        zip(singleChoiceItems, currentAnswers).forEach{
            (button, answer)
            in
            button.setTitle(answer.text, for: [])
            button.isHidden = false
        }
    }
    
    func showMultipleChoice() {
        multipleChoiceForm.isHidden = false
        multipleChioceItems.forEach{ $0.isHidden = true }
        zip(multipleChioceItems, currentAnswers).forEach{
            (chiceItem, answer)
            in
            let label = chiceItem.arrangedSubviews.first as! UILabel
            label.text = answer.text
            chiceItem.isHidden = false
        }
    }
    
    func showRangeChoice() {
        rangeChoiceForm.isHidden = false
        rangeStartLabel.text = currentAnswers.first?.text
        rangeFinishLabel.text = currentAnswers.last?.text
    }
    
    // MARK: - Interactions
    
    @IBAction func answered() {
        currentQuestionIndex += 1
    }
}
