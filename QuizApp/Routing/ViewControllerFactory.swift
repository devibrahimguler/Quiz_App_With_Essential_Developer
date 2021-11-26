//
//  ViewControllerFactory.swift
//  QuizApp
//
//  Created by İbrahim Güler on 20.09.2021.
//

import UIKit
import BasicQuizDomain

protocol ViewControllerFactory {
    typealias Answers = [(question: Question<String>, answer: [String])]
    
    func questionViewController(for question: Question<String>, answerCallback: @escaping ([String]) -> Void) -> UIViewController
    
    func resultsViewController(for userAnswers: Answers) -> UIViewController
}
