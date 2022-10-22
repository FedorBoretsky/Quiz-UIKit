//
//  ResultViewController.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 20.02.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let answers: [Answer]
    
    init?(coder: NSCoder, responses answers: [Answer]) {
        self.answers = answers
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        displayResult(animal: calculatedResult())
    }
    
    func displayResult(animal: AnimalType) {
        resultLabel.text = "\(animal.rawValue)"
        descriptionLabel.text = animal.description
    }
    
    func calculatedResult() -> AnimalType {
        let numberOfResponsesByType = answers.reduce(into: [:]) { numberOfResponsesByType, answer in
            numberOfResponsesByType[answer.animalType, default: 0] += 1
        }
        let mostFrequentType = numberOfResponsesByType.sorted{ $0.value > $1.value }.first!.key
        return mostFrequentType
    }

}
