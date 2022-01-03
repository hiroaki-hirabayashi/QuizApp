//
//  Question.swift
//  QuizApp
//
//  Created by Hiroaki-Hirabayashi on 2022/01/01.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
