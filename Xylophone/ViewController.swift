//
//  ViewController.swift
//  Xylophone
//
//  Created by Erfan Ahmed Siam on 25 March 2021
//  Team Freon Devs
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let sound = sender.currentTitle!
        
        print(sound)
        
        playSound(file: sound)
    }
    
    func playSound(file sound:String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


 
