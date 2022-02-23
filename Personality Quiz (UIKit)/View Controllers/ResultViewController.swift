//
//  ResultViewController.swift
//  Personality Quiz (UIKit)
//
//  Created by Fedor Boretskiy on 20.02.2022.
//

import UIKit

class ResultViewController: UIViewController {

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
        // Debug …
        print(#fileID, #function); answers.forEach{ print($0.text) }
    }

}
