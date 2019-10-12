//
//  ViewController.swift
//  Xylophone
//
//  Created by jungwooram on 2019-10-12.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var player = AVAudioPlayer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}

