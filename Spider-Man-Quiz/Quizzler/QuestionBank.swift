//
//  QuestionBank.swift
//  Quizzler
//
///  Spider-Man Quiz
//
//  Created by Richard Haynes  on 2018-11-25.
//

import Foundation
class QuestionBank
{
    var list = [Question]()
    init()
    {
        // Creating a quiz item and appending it to the list
        //TODO numberOfQuestions in ViewController must be changed manually currently as of 2018-12-1 to reflect total question numbers
        //TODO give correct answers 2018-12-1
        //1st Question
        list.append(Question(text: "Spider-Man 1st appeared in Amazing Fantasy 15.", answerResponse: true, theCorrectAnswer: "Spider-Man did originally appear in Amazing Fantasy #15.", difficultyLevel: "Easy"))
        //2nd Question
        list.append(Question(text: "The Punisher was originally a Spider-Man villain.", answerResponse: true, theCorrectAnswer: "The Punisher was indeed originally hired to kill Spider-Man.", difficultyLevel: "Easy"))
        //3rd Question
        list.append(Question(text: "No version of Spider-Man has ever killed.", answerResponse: false, theCorrectAnswer: "Many alternate version's of Spider-Man have killed enemies.", difficultyLevel: "Hard"))
        //4th Question
        list.append(Question(text: "Mile Morales is half African American half Caucasian.", answerResponse: false, theCorrectAnswer: "Miles Morales is half African American half Pureto Rican.", difficultyLevel: "Hard"))
        //5th Question
        list.append(Question(text: "Spider-Woman(Jessica Drew) can shoot Venom Blasts.", answerResponse: true, theCorrectAnswer: "Spider-Woman can shoot bio-electric Venom Blasts.", difficultyLevel: "Easy"))
        //6th Question
        list.append(Question(text: "Miguel O'Hara is the Spider-Man from 2099.", answerResponse: true, theCorrectAnswer: "Miguel O'Hara is indeed Spider-Man 2099.", difficultyLevel: "Medium"))
        //7th Question
        list.append(Question(text: "Spider-Man is actually a mutant.", answerResponse: false, theCorrectAnswer: "Spider-Man is what is called a mutate. He does not possess a X-Gene which mutants have.", difficultyLevel: "Medium"))
        //8th Question
        list.append(Question(text: "Chamelon was Spider-Man's 1st SUPER-villain.", answerResponse: true, theCorrectAnswer: "Chameolon was Spider-Man's 1st Super Villain showing up in Amazing Spider-Man #1.", difficultyLevel: "Hard"))
        //9th Question
        list.append(Question(text: "Dr.Octopus took over Spider-Man's body and become the Superior Spider-Man for a time.", answerResponse: true, theCorrectAnswer: "Dr.Octopus did indeed take over Spider-Man's body and became known as the Superio Spider-Man.", difficultyLevel: "Hard"))
        //10th Question
        list.append(Question(text: "Spider-Man was an original member of the Avengers.", answerResponse: false, theCorrectAnswer: "Spider-Man did not join the Avengers officially until New Avengers Volume 1 Issue 1 in January 2005. ", difficultyLevel: "Medium"))
        //11th Question
        list.append(Question(text: "Spider-Man once had 8 arms.", answerResponse: false, theCorrectAnswer: "Spider-Man once had 6 arms. ", difficultyLevel: "Medium"))
        //12th Question
        list.append(Question(text: "Michael Morbius is a real Vampire.", answerResponse: false, theCorrectAnswer: "Morbius is a mutate but not a true supernatural vampire. ", difficultyLevel: "Medium"))
        //13th Question
        list.append(Question(text: "Peter Parker is a genius in the fields of robotics.", answerResponse: false, theCorrectAnswer: "Despite being a genius robotics is one of Peter's weakest sciences. ", difficultyLevel: "Hard"))
        //14th Question
        list.append(Question(text: "Peter Parkers IQ is above 200.", answerResponse: true, theCorrectAnswer: "Peter's IQ is near 250. ", difficultyLevel: "Hard"))
        //15th Question
        list.append(Question(text: "The Human Torch (Johnny Storm) taught Spider-Man how to drive.", answerResponse: true, theCorrectAnswer: "Peter didn't learn to drive since he could web swing since a young age. ", difficultyLevel: "Hard"))
        //16th Question
        list.append(Question(text: "Spider-Man's original costume has underarm web wings.", answerResponse: true, theCorrectAnswer: "Spider-Man's originally had under arm wings but artists stopped drawing them. ", difficultyLevel: "Medium"))
        //17th Question
        list.append(Question(text: "Spider-Man gave Spider-Woman(Jessica Drew) her powers.", answerResponse: false, theCorrectAnswer: "Spider-Man and Spider-Woman have nothing in common as far a origin. ", difficultyLevel: "Medium"))
        //18th Question
        list.append(Question(text: "Wolverine(Logan) is Spider-Man's godfather.", answerResponse: true, theCorrectAnswer: "Richard and Mary Parker made Logan Peter's godfather during a spy mission. ", difficultyLevel: "Hard"))
        //19th Question
        list.append(Question(text: "Spider-Man hates Star Wars.", answerResponse: true, theCorrectAnswer: "Spider-Man has been vocal of not being a fan of Star Wars. ", difficultyLevel: "Hard"))
        //20th Question
        list.append(Question(text: "Spider-Man and Deadpool are great friends.", answerResponse: false, theCorrectAnswer: "Spider-Man tolerates Deadpool and will work with him but openly dispises like him. ", difficultyLevel: "Hard"))
        //21st Question
        list.append(Question(text: "Spider-Man's webbing is one of his super powers.", answerResponse: false, theCorrectAnswer: "Spider-Man built mechanical web shooters to make webs. ", difficultyLevel: "Easy"))
        //22nd Question
        list.append(Question(text: "FireStar was created for the TV show Spider-Man and his Amazing Friends.", answerResponse: true, theCorrectAnswer: "Firestar didn't exist until the Spider-Man and his Amazing Friends TV show. ", difficultyLevel: "Hard"))
        
        
    }
}