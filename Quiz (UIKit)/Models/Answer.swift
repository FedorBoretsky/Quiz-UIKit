//
//  Answer.swift
//  Quiz (UIKit)
//
//  Created by Fedor Boretsky on 22.10.2022.
//

import Foundation

struct Answer<Candidate> {
    let text: String
    let votes: [Candidate]
    var isSelected = false
}
