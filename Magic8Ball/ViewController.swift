//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Thomas Prezioso on 11/12/18.
//  Copyright © 2018 Thomas Prezioso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    
    @IBOutlet weak var eightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomAnswer()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomAnswer()
    }
    
    func randomAnswer() {
        randomBallNumber = Int.random(in: 0...4)
        eightBallImage.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

