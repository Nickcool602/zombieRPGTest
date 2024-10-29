//
//  ViewController.swift
//  zombieRPGTest
//
//  Created by NICHOLAS VINTARTAS on 10/29/24.
//

import UIKit

class ViewController: UIViewController {

    var level = 1
    var XP = 0
    var health = 100
    var alive = true
    
    var baseDMG = 1
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var XPLabel: UILabel!
    @IBOutlet weak var HPLabel: UILabel!
    
    func update() {
        if XP >= level * 10 {
            level = level + 1
            health = health + 10
            XP = 0
        }
        if health <= 0 {
            alive = false
        }
        if alive == false {
            //write death code later
        }
        
        levelLabel.text = "Level: \(level)"
        XPLabel.text = "XP: \(XP)"
        HPLabel.text = "Health: \(health)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

