//
//  ViewController.swift
//  Quizzier
//
//  Created by jungwooram on 2019-10-13.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quizScore: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        if quizBrain.checkAnswer(sender.currentTitle!){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuiz()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuiz()
        progressBar.progress = quizBrain.getProgress()
        quizScore.text = "score : \(quizBrain.getQuizScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    

}

