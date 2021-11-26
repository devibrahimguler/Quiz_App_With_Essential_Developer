//
//  Question.swift
//  BasicQuizDomain
//
//  Created by İbrahim Güler on 20.09.2021.
//

import Foundation

public enum Question<T: Hashable>: Hashable {
    case singleAnswer(T)
    case multipleAnswer(T)
}
