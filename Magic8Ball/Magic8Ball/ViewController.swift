//
//  ViewController.swift
//  Magic8Ball
//
//  Created by jungwooram on 2019-10-12.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
        imageView.image = ballArray.randomElement()
    }
    

}

