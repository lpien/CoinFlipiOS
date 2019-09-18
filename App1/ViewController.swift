//
//  ViewController.swift
//  App1
//
//  Created by Lauren Pien on 9/17/19.
//  Copyright © 2019 Lauren Pien. All rights reserved.
//

import UIKit

class ViewController : UIViewController{
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var headCounterLabel: UILabel!
    @IBOutlet weak var tailCounterLabel: UILabel!
    
    var headsCounter:Int = 0
    var tailsCounter:Int = 0
    
    override func viewDidLoad() {
        super .viewDidLoad()
    }
    
    @IBAction func FlipButton(_ sender: Any) {
        let leftImage = Bool.random()
        let rightImage = Bool.random()
        
        if leftImage == true {
            headsCounter += 1
            headCounterLabel.text = String(headsCounter)
            leftImageView.image = UIImage(named: "heads")
        }
        if leftImage == false{
            tailsCounter += 1
            tailCounterLabel.text = String(tailsCounter)
            leftImageView.image = UIImage(named: "tails")
        }
        if rightImage == true{
            headsCounter += 1
            headCounterLabel.text = String(headsCounter)
            rightImageView.image = UIImage(named: "heads")
        }
        if rightImage == false{
            tailsCounter += 1
            tailCounterLabel.text = String(tailsCounter)
            rightImageView.image = UIImage(named: "tails")
        }
    }
}
