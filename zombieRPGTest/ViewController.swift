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
    
    var energy = 100
    
    var defense = 0
    var weaponDMG = 0
    
    var baseDMG = 1
    var speed = 10
    var maxSpeed = 10
    
    var topsEquipped = "Formal Shirt"
    var topsInv = ["Formal Shirt"]
    
    var pantsEquipped = "Suit Pants"
    var pantsInv = ["Suit Pants"]
    
    var shoesEquipped = "Work Shoes"
    var shoesInv = ["Work Shoes"]
    
    var socksEquipped = "Basic Socks"
    var socksInv = ["Basic Socks"]
    
    var hatsEquipped = "None"
    var hatsInv = ["Cap"]
    
    var weaponEquipped = "None"
    var weaponsInv = ["Pencil","Pen"]
    var weaponsDurability = [1,5]
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var XPLabel: UILabel!
    @IBOutlet weak var HPLabel: UILabel!
    @IBOutlet weak var energyLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        print(topsEquipped)
        print(pantsEquipped)
        print(shoesEquipped)
        print(socksEquipped)
        print(hatsEquipped)
    }
    
    func update() {
        
        if weaponsDurability.contains(0) {
            while weaponsDurability.indices.contains(0) {
                weaponsInv.remove(at: weaponsDurability.firstIndex(of: 0)!)
                weaponsDurability.remove(at: weaponsDurability.firstIndex(of: 0)!)
            }
        }
        
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
        
        defense = 0
        
        if topsEquipped == "Formal Shirt" {
            defense = defense + 1
        }
        if pantsEquipped == "Suit Pants" {
            defense = defense + 1
        }
        if shoesEquipped == "Work Shoes" {
            speed = speed - 2
        }
        if socksEquipped == "Basic Socks" {
            
        }
        if hatsEquipped == "Cap" {
            defense = defense + 1
        }
        
        //Weapon Modifiers
        if weaponEquipped == "Pencil" {
            weaponDMG = 1
        }
        else if weaponEquipped == "Pen" {
            weaponDMG = 1
        }
        
        //Energy
        if energy < 0 {
            energy = 0
        }
        if energy == 0 {
            health = health - 5
        }
        
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
        energyLabel.text = "Energy: \(energy)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
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
        
        let weaponsInvSender = segue.destination as! InventoryVC
        let weaponsEquippedSender = segue.destination as! InventoryVC
        
        
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
        
        weaponsInvSender.weaponsInvRecieved = weaponsInv
        weaponsEquippedSender.weaponsEquippedRecieved = weaponEquipped

    }

}

