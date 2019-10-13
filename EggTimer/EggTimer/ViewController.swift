//
//  ViewController.swift
//  EggTimer
//
//  Created by jungwooram on 2019-10-13.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggDic = ["Soft":3, "Medium":5, "Hard":7]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "alarm_sound.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            
        } catch {
            // couldn't load file :(
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func eggClicked(_ sender: UIButton) {

        timer.invalidate()
        player!.stop()

        
        let hardNess = sender.currentTitle!;
        
        totalTime = eggDic[hardNess]!
        
        secondPassed = 0;
        titleLabel.text = hardNess
        progressBar.progress = 0.0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }

    
    @objc func updateTimer(){
        if secondPassed < totalTime{
            secondPassed += 1
            let percentage = Float(secondPassed) / Float(totalTime)
            progressBar.progress = percentage

        }else{
            timer.invalidate()
            titleLabel.text = "DONE!"
            player!.play()
        }
    }
    
}

