//
//  ViewController.swift
//  XyloPhone
//
//  Created by Madhu on 15/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{

    
    var player:AVAudioPlayer!
    
    
    //CREATING SINGLE OUTLET FOR ALL BUTTONS
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        playSound(soundName: sender.currentTitle!)
        
    }
    
    
    func playSound(soundName: String)
    {
    
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try? AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    
    override func viewDidLoad()
    {
       super.viewDidLoad()
    }
}


