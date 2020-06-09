//
//  SplashScreenViewController.swift
//  GoT-Houses
//
//  Created by Kathryn Tatum on 4/6/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit
import AVFoundation

class SplashScreenViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        playSound(soundName: "themeMusic")
    }
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print ("ERROR: 🛑 \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("ERROR: 🛑 Could not read data from file sound0")
        }
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "ShowTableView", sender: nil)
    }
    
}
