//
//  QuestionsViewController.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 18.02.2022.
//

import UIKit

class QuestionsViewController: UIViewController
{
    @IBOutlet weak var singleChoiceControls: UIStackView!
    @IBOutlet weak var multipleChoiceControls: UIStackView!
    @IBOutlet weak var rangeChoiceControls: UIStackView!
    @IBOutlet var choiceControls: [UIStackView]!
    @IBOutlet weak var questionText: UILabel!
    
    var questionIndex = 0 {
        didSet {
            if questionIndex < Question.list.count {
                updateUI()
            } else {
                performSegue(withIdentifier: "gotoResult", sender: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        // Clear all.
        choiceControls.forEach{ $0.isHidden = true }
        // Show controls for current question.
        let question = Question.list[questionIndex]
        questionText.text = question.text
        switch question.responseType {
        case .singleChoice:
            singleChoiceControls.isHidden = false
        case .multipleChoice:
            multipleChoiceControls.isHidden = false
        case .rangeChoice:
            rangeChoiceControls.isHidden = false
        }
    }
    
    @IBAction func answered() {
        questionIndex += 1
    }
}
