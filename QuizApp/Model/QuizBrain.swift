//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Hiroaki-Hirabayashi on 2022/01/01.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "犬は英語でDogである。", a: "はい"),
        Question(q: "人間の骨の約4分の1は足にある。", a: "はい"),
        Question(q: "人間の肺の総表面積は約70平方メートルです。", a: "はい"),
        Question(q: "アメリカのウェストバージニア州では誤って動物を車で轢いてしまった場合、その動物を持ち帰って食べることができます。", a: "はい"),
        Question(q: "クリスマスは12月24日である。", a: "いいえ"),
        Question(q: "ポルトガルでは、海でおしっこをすることは違法です。", a: "はい"),
        Question(q: "車で海を渡ることができる。", a: "いいえ"),
        Question(q: "Googleはもともと『Backrub』という名前でした。", a: "はい"),
        Question(q: "ムーミンは妖精である。", a: "はい"),
        Question(q: "動物が出す最も大きな音は、188デシベル。その動物とは、アフリカゾウです。", a: "いいえ"),
        Question(q: "正方形の乾いた紙は、7回以上半分に折ることはできません。", a: "いいえ"),
        Question(q: "日本を英語にするとJapanである。", a: "はい")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
