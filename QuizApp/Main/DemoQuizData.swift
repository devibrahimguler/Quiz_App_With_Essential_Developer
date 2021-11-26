//
//  DemoQuizData.swift
//  QuizApp
//
//  Created by İbrahim Güler on 20.09.2021.
//

import BasicQuizDomain

let demoQuiz = try!
    BasicQuizBuilder(
        singleAnswerQuestion: "Uçaklarda pilot kabinine ne ad verilir?",
        options: NonEmptyOptions("Kaptan Odası", "Kabin", "Kokpit"),
        answer: "Kokpit"
    )
    .adding(
        multipleAnswerQuestion: "Aşağıdaki hayvanlardan hangileri soğuk ortama daha dayanıklıdır?" ,
        options: NonEmptyOptions("Deve", "Kutup Ayısı", "Penguen"),
        answer: NonEmptyOptions("Kutup Ayısı", "Penguen")
    )
    .adding(
        singleAnswerQuestion: "Adın ne" ,
        options: NonEmptyOptions("İbrahim", "Hasan", "Emre"),
        answer: "Emre"
    )
    .build()

