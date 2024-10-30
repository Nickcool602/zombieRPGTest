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
    var maxHealth = 100
    var health = 100
    var alive = true
    
    var defense = 0
    
    var baseDMG = 1
    var speed = 10
    var maxSpeed = 10
    
    var topsEquipped = "T-Shirt"
    var topsInv : [String] = []
    
    var pantsEquipped = "Jeans"
    var pantsInv : [String] = []
    
    var shoesEquipped = "Sneakers"
    var shoesInv : [String] = []
    
    var socksEquipped = "Basic Socks"
    var socksInv : [String] = []
    
    var hatsEquipped = "None"
    var hatsInv : [String] = []
    
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var XPLabel: UILabel!
    @IBOutlet weak var HPLabel: UILabel!
    
    func update() {
        
        //Leveling
        if XP >= level * 10 {
            level = level + 1
            health = health + 10
            XP = 0
            maxSpeed = maxSpeed + 2
        }
        
        //Speed
        if speed > maxSpeed {
            speed = maxSpeed
        }
        
        //Clothing Modifiers
        
        
        //Health
        
        if health > maxHealth {
            health = maxHealth
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let topsInvSender = segue.destination as! InventoryVC
        let topsEquippedSender = segue.destination as! InventoryVC
        
        let pantsInvSender = segue.destination as! InventoryVC
        let pantsEquippedSender = segue.destination as! InventoryVC
        
        let shoesInvSender = segue.destination as! InventoryVC
        let shoesEquippedSender = segue.destination as! InventoryVC
        
        let socksInvSender = segue.destination as! InventoryVC
        let socksEquippedSender = segue.destination as! InventoryVC
        
        let hatsInvSender = segue.destination as! InventoryVC
        let hatsEquippedSender = segue.destination as! InventoryVC
        
        
        topsInvSender.topsInvRecieved = topsInv
        topsEquippedSender.topsEquippedRecieved = topsEquipped
        
        pantsInvSender.pantsInvRecieved = pantsInv
        pantsEquippedSender.pantsEquippedRecieved = pantsEquipped
        
        shoesInvSender.shoesInvRecieved = shoesInv
        shoesEquippedSender.shoesEquippedRecieved = shoesEquipped
        
        socksInvSender.socksInvRecieved = socksInv
        socksEquippedSender.socksEquippedRecieved = socksEquipped
        
        hatsInvSender.hatsInvRecieved = hatsInv
        hatsEquippedSender.hatsEquippedRecieved = hatsEquipped

    }

}

