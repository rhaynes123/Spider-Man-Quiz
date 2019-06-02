//
//  Question.swift
//  Spider-Man Quiz
//
//  Created by Richard Haynes  on 2018-11-25.
//

import Foundation

class Question
{
    let QuestionText : String
    let answer : Bool
    let correctAnswer : String
    let difficulty : String//Maybe should be an enum?
    
    init(Id: Int, text: String, answerResponse: Bool, theCorrectAnswer: String, difficultyLevel: String) {
        QuestionText = text
        answer = answerResponse
        correctAnswer = theCorrectAnswer
        difficulty = difficultyLevel
        
        
    }
    
    
}


