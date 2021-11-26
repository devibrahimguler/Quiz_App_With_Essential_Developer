//
//  PresentableAnswer.swift
//  QuizApp
//
//  Created by İbrahim Güler on 20.09.2021.
//

import Foundation

struct PresentableAnswer: Equatable {
    let question: String
    let answer: String
    let wrongAnswer: String?
}
