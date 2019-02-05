//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Junmo Han on 2019. 2. 5..
//  Copyright © 2019년 Junmo Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    @IBOutlet weak var magicImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBall()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBall()
    }
    
    func newBall() {
        randomBallNumber = Int.random(in: 0 ... 4)
        magicImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBall()
    }
    
}

