//
//  QuestionBank.swift
//  Quizzler
//
///  Spider-Man Quiz
//
//  Created by Richard Haynes  on 2018-11-25.
//

import Foundation
import SQLite3
class QuestionBank
{
    //---------
    func openDatabase() ->OpaquePointer
    {
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("HEROES.db")// TODO this may not be the ideal way to implement this. Need to determine how to better determine the file path the db will remain in.
        
        var db: OpaquePointer?
        
        if sqlite3_open(fileURL.path, &db) == SQLITE_OK
        {
            print("Succesfully opening database at: \(fileURL.path)")
        }
        else
        {
            print("Error opening database")
        }
        return db!
    }
    //2019-06-02 RH: TODO Creating below function as apparently SQLite3 doesn't support bool data type: Need to find more appropriate method
    func ConvertToBool(QueryColumn: Int32)->Bool{
        if QueryColumn == 1
        {
            return true;
        }
        else if QueryColumn == 0
        {
            return false;
        }
        else
        {
            return false;
        }
        //return 0;
    }
   
    lazy var db = openDatabase()
    
    //---------
    var list = [Question]()
    init()
    {
        list.removeAll()
        
        let SpiderManQuestionQuery = "SELECT Id,QuestionText,AnswerResponse,CorrectAnswer,Difficulty FROM QUESTIONS"
        
        var StatmentPointer: OpaquePointer?
        
        if sqlite3_prepare(db,SpiderManQuestionQuery, -1, &StatmentPointer, nil) != SQLITE_OK{
            let DBErrorMessage = String(cString: sqlite3_errmsg(db)!)
            print("Error reading data: \(DBErrorMessage)")
            return
        }
        while(sqlite3_step(StatmentPointer) == SQLITE_ROW)
        {
            let QuestionID = sqlite3_column_int(StatmentPointer, 0)
            let QuestionText = String(cString: sqlite3_column_text(StatmentPointer, 1))
            let AnswerResponse = ConvertToBool(QueryColumn:sqlite3_column_int(StatmentPointer, 2)) //TODO need to figure out how to handle boolean
            
            let CorrectAnswer = String(cString: sqlite3_column_text(StatmentPointer, 3))
            let Difficulty = String(cString: sqlite3_column_text(StatmentPointer, 4))
        
        
        // Creating a quiz item and appending it to the list
       
            //---------
            list.append(Question(Id:Int(QuestionID),text: QuestionText, answerResponse:  AnswerResponse, theCorrectAnswer: CorrectAnswer, difficultyLevel: Difficulty))
            
            //---------
        
        list.shuffle()
        
        }
        
        
    }
    
}


//1st Question
/*
 list.append(Question(Id:1,text: "Spider-Man 1st appeared in Amazing Fantasy 15.", answerResponse: true, theCorrectAnswer: "Spider-Man did originally appear in Amazing Fantasy #15.", difficultyLevel: "Easy"))
 //2nd Question
 list.append(Question(Id:2,text: "The Punisher was originally a Spider-Man villain.", answerResponse: true, theCorrectAnswer: "The Punisher was indeed originally hired to kill Spider-Man.", difficultyLevel: "Easy"))
 //3rd Question
 list.append(Question(Id:3,text: "No version of Spider-Man has ever killed.", answerResponse: false, theCorrectAnswer: "Many alternate version's of Spider-Man have killed enemies.", difficultyLevel: "Hard"))
 //4th Question
 list.append(Question(Id:4,text: "Mile Morales is half African American half Caucasian.", answerResponse: false, theCorrectAnswer: "Miles Morales is half African American half Pureto Rican.", difficultyLevel: "Hard"))
 //5th Question
 //
 list.append(Question(Id:5,text: "Spider-Woman(Jessica Drew) can shoot Venom Blasts.", answerResponse: true, theCorrectAnswer: "Spider-Woman can shoot bio-electric Venom Blasts.", difficultyLevel: "Easy"))// 13 points
 //6th Question
 list.append(Question(Id:6,text: "Miguel O'Hara is the Spider-Man from 2099.", answerResponse: true, theCorrectAnswer: "Miguel O'Hara is indeed Spider-Man 2099.", difficultyLevel: "Medium"))
 //7th Question
 list.append(Question(Id:7,text: "Spider-Man is actually a mutant.", answerResponse: false, theCorrectAnswer: "Spider-Man is what is called a mutate. He does not possess a X-Gene which mutants have.", difficultyLevel: "Medium"))
 //8th Question
 list.append(Question(Id:8,text: "Chamelon was Spider-Man's 1st SUPER-villain.", answerResponse: true, theCorrectAnswer: "Chameolon was Spider-Man's 1st Super Villain showing up in Amazing Spider-Man #1.", difficultyLevel: "Hard"))
 //9th Question
 list.append(Question(Id:9,text: "Dr.Octopus took over Spider-Man's body and become the Superior Spider-Man for a time.", answerResponse: true, theCorrectAnswer: "Dr.Octopus did indeed take over Spider-Man's body and became known as the Superio Spider-Man.", difficultyLevel: "Hard"))
 //10th Question
 list.append(Question(Id:10,text: "Spider-Man was an original member of the Avengers.", answerResponse: false, theCorrectAnswer: "Spider-Man did not join the Avengers officially until New Avengers Volume 1 Issue 1 in January 2005. ", difficultyLevel: "Medium"))
 //11th Question 19 total points
 list.append(Question(Id:11,text: "Spider-Man once had 8 arms.", answerResponse: false, theCorrectAnswer: "Spider-Man once had 6 arms.", difficultyLevel: "Medium"))
 //12th Question
 list.append(Question(Id:12, text: "Michael Morbius is a real Vampire.", answerResponse: false, theCorrectAnswer: "Morbius is a mutate but not a true supernatural vampire. ", difficultyLevel: "Medium"))
 //13th Question
 list.append(Question(Id:13,text: "Peter Parker is a genius in the fields of robotics.", answerResponse: false, theCorrectAnswer: "Despite being a genius robotics is one of Peter's weakest sciences. ", difficultyLevel: "Hard"))
 //14th Question
 list.append(Question(Id:14,text: "Peter Parkers IQ is above 200.", answerResponse: true, theCorrectAnswer: "Peter's IQ is near 250. ", difficultyLevel: "Hard"))
 //15th Question
 list.append(Question(Id:15,text: "The Human Torch (Johnny Storm) taught Spider-Man how to drive.", answerResponse: true, theCorrectAnswer: "Peter didn't learn to drive since he could web swing since a young age. ", difficultyLevel: "Hard"))
 //16th Question 21 total points
 list.append(Question(Id:16,text: "Spider-Man's original costume has underarm web wings.", answerResponse: true, theCorrectAnswer: "Spider-Man's originally had under arm wings but artists stopped drawing them. ", difficultyLevel: "Medium"))
 //17th Question
 list.append(Question(Id:17,text: "Spider-Man gave Spider-Woman(Jessica Drew) her powers.", answerResponse: false, theCorrectAnswer: "Spider-Man and Spider-Woman have nothing in common as far a origin. ", difficultyLevel: "Medium"))
 //18th Question
 list.append(Question(Id:18,text: "Wolverine(Logan) is Spider-Man's godfather.", answerResponse: true, theCorrectAnswer: "Richard and Mary Parker made Logan Peter's godfather during a spy mission. ", difficultyLevel: "Hard"))
 //19th Question
 list.append(Question(Id:19,text: "Spider-Man hates Star Wars.", answerResponse: true, theCorrectAnswer: "Spider-Man has been vocal of not being a fan of Star Wars. ", difficultyLevel: "Hard"))
 //20th Question
 list.append(Question(Id:20,text: "Spider-Man and Deadpool are great friends.", answerResponse: false, theCorrectAnswer: "Spider-Man tolerates Deadpool and will work with him but openly dispises like him. ", difficultyLevel: "Hard"))
 //21st Question 21 total points
 list.append(Question(Id:21,text: "Spider-Man's webbing is one of his super powers.", answerResponse: false, theCorrectAnswer: "Spider-Man built mechanical web shooters to make webs. ", difficultyLevel: "Easy"))
 //22nd Question
 list.append(Question(Id:22,text: "FireStar was created for the TV show Spider-Man and his Amazing Friends.", answerResponse: true, theCorrectAnswer: "Firestar didn't exist until the Spider-Man and his Amazing Friends TV show. ", difficultyLevel: "Hard"))
 //23rd Question
 list.append(Question(Id:23,text: "OverDrive is both a fan of Spider-Man and a supervillain.", answerResponse: true, theCorrectAnswer: "OverDrive is a big Spider-Man fan.", difficultyLevel: "Hard"))
 //24th Question
 list.append(Question(Id:24,text: "Green Goblin originally rode a rocket Broom Stick.", answerResponse: true, theCorrectAnswer: "Green Goblin debuyed riding of rocket Broom Stick.", difficultyLevel: "Hard"))
 //25th Question
 list.append(Question(Id:25,text: "Peter Parker spent time working as a high school Science Teacher.", answerResponse: true, theCorrectAnswer: "During the mid 2000s Spider-Man taught science at Mid-Town High.", difficultyLevel: "Hard"))
 //26th Question 21 total points
 list.append(Question(Id:26,text: "Spider-Man worked as a photographer for the Daily Planet.", answerResponse: false, theCorrectAnswer: "He worked at the Daily Bugle.", difficultyLevel: "Easy"))
 //27th Question
 list.append(Question(Id:27,text: "Spider-Man needs his suit to wall crawl.", answerResponse: false, theCorrectAnswer: "Wall crawling is one of his natural powers.", difficultyLevel: "Easy"))
 //28th Question
 list.append(Question(Id:28,text: "Spider-Man lives in New York City.", answerResponse: true, theCorrectAnswer: "Peter Parker indeed lives in New York City.", difficultyLevel: "Easy"))
 //29th Question
 list.append(Question(Id:29,text: "Spider-Man's Uncle is named Richard.", answerResponse: false, theCorrectAnswer: "Peter Parker's famous uncle is named Ben.", difficultyLevel: "Easy"))
 //30th Question
 list.append(Question(Id:30,text: "Spider-Man can talk to actual spiders.", answerResponse: false, theCorrectAnswer: "There was a time when this was true but Spider-Man quickly loss that power.", difficultyLevel: "Easy"))
 */
