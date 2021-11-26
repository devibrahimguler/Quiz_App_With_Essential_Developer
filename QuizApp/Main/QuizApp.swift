//
//  QuizApp.swift
//  QuizApp
//
//  Created by İbrahim Güler on 20.09.2021.
//

import SwiftUI
import QuizEngine

class QuizAppStore {
    var quiz: Quiz?
}

@main
struct QuizApp: App {
    let appStore = QuizAppStore()
    @StateObject var navigationStore = QuizNavigationStore()
    
    var body: some Scene {
        
        WindowGroup {
            QuizNavigationView(store: navigationStore)
                .onAppear {
                    startNewQuiz()
                }
        }
    }
    
    private func startNewQuiz() {
        let adapter = iOSSwiftUINavigationAdapter(
            navigation: navigationStore,
            options: demoQuiz.options,
            correctAnswers: demoQuiz.correctAnswers,
            playAgain: startNewQuiz)
        
        appStore.quiz = Quiz.start(questions: demoQuiz.questions, delegate: adapter)
    }
}

