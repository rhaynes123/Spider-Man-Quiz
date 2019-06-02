//
//  ViewController.swift
//  Star Wars Quiz
//
//  Created by Richard Haynes  on 2018-11-25.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var totalScore = 100
    var score = 0
    
    lazy var numberOfQuestions: Int = allQuestions.list.count
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        
    }
    //TODO Add a start menu RH:2018-11-25
    @IBAction func answerPressed(_ sender: AnyObject)
    {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        
    }
    
    @IBAction func exitGame(_ sender: Any) {
        let alert = UIAlertController(title: "Are you sure you wish to Quit?", message: "", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "Yes", style: .default, handler:
        { (UIAlertAction) in
            self.startOver()
        })
        alert.addAction(restartAction)
        present(alert,     animated: true, completion: nil)
    }
    
    func updateUI()
    {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1)/ \(numberOfQuestions)"
        
    }
    
    
    func nextQuestion()
    {
        MusicPlayer(fileSound:"_spiderman-thwip")
        //questionNumber = allQuestions.shuffled()
        if questionNumber < numberOfQuestions {
            questionLabel.text = allQuestions.list[questionNumber].QuestionText
            updateUI()
        }
        else  {
            
            let alert = UIAlertController(title: "You've Finished", message: "Total Score: \(score)|\(totalScore)", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer()
    {
        let answerResponse = allQuestions.list[questionNumber].answer
        let difficultyLevel = allQuestions.list[questionNumber].difficulty
        //--- Easy
        if answerResponse == pickedAnswer && difficultyLevel == "Easy" {
            score += 1
            displayCorrectAnswer(displayAnswer:"Correct: You got 1 Point")
        }
            //--- Medium
        else if answerResponse == pickedAnswer && difficultyLevel == "Medium" {
            score += 3
            displayCorrectAnswer(displayAnswer:"Correct: That was kinda tough. You got 3 Points")
        }
            //--- Hard
        else if answerResponse == pickedAnswer && difficultyLevel == "Hard" {
            score += 5
            displayCorrectAnswer(displayAnswer:"Correct: That was Hard. You got 5 Points")
        }
            //--- Wrong
        else {
            displayCorrectAnswer(displayAnswer:"Wrong!")
            
        }
        
    }
    
    func displayCorrectAnswer(displayAnswer: String)
    {
        
        print(displayAnswer)
        //------ Display Correct Answer
        
        let alert = UIAlertController(title: "\(displayAnswer)", message: "\(allQuestions.list[questionNumber].correctAnswer)", preferredStyle: .alert)
        
        let showAnswerAction = UIAlertAction(title: "Next", style: .default, handler:
        { (UIAlertAction) in
            self.nextQuestion()
        })
        alert.addAction(showAnswerAction)
        present(alert, animated: true, completion: nil)
        updateUI()
        
    }
    
    func startOver()
    {
        questionNumber = 0
        score = 0
        nextQuestion()
        allQuestions.list.removeAll()//TODO this maybe redundant since I'm also remvoing all in the QuestionBank file as well.
        
    }
    
    func MusicPlayer(fileSound: String)
    {
        guard let url = Bundle.main.url(forResource: "\(fileSound)", withExtension: "wav") else {return}
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            guard let audioPlayer = audioPlayer else {return}
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }catch let error{
            print(error.localizedDescription)
        }
    }
    
}
