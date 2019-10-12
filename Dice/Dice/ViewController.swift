//
//  ViewController.swift
//  Dice
//
//  Created by jungwooram on 2019-10-10.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    

    @IBAction func clickedRollButton(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        leftDiceImageView.image = diceArray.randomElement()
        rightDiceImageView.image = diceArray.randomElement()
    }
    
}

