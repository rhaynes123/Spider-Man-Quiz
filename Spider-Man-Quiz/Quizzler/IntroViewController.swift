//
//  IntroViewController.swift
//  Spider-Man Quiz
//
//  Created by richard Haynes on 1/13/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class IntroViewController: UIViewController {
    var audioPlayer : AVAudioPlayer?
    @IBOutlet var PlayGameButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        colorButton()
        MusicPlayer(fileSound: "Spiderman")
    }
    
    @IBAction func MuteButton(_ sender: Any) {
        MusicStop();
    }
    @IBAction func PlayGameButtonPressed(_ sender: Any) {
        MusicStop()
    }
    func colorButton()
    {
        PlayGameButton.backgroundColor = UIColor.white
        PlayGameButton.layer.cornerRadius = PlayGameButton.frame.height/2
        PlayGameButton.layer.shadowRadius = 4
    }
    //This needs to be in a class at this point
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
    func MusicStop()
    {
        audioPlayer?.stop()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
