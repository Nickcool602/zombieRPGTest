//
//  InventoryVC.swift
//  zombieRPGTest
//
//  Created by NICHOLAS VINTARTAS on 10/30/24.
//

import UIKit

class InventoryVC: UIViewController {
    
    @IBOutlet weak var topsEquippedLabel: UILabel!
    var topsEquippedRecieved = ""
    var topsInvRecieved : [String] = []
    var topsSelection = 0
    
    @IBOutlet weak var pantsEquippedLabel: UILabel!
    var pantsEquippedRecieved = ""
    var pantsInvRecieved : [String] = []
    var pantsSelection = 0
    
    @IBOutlet weak var shoesEquippedLabel: UILabel!
    var shoesEquippedRecieved = ""
    var shoesInvRecieved : [String] = []
    var shoesSelection = 0
    
    @IBOutlet weak var socksEquippedLabel: UILabel!
    var socksEquippedRecieved = ""
    var socksInvRecieved : [String] = []
    var socksSelection = 0
    
    @IBOutlet weak var hatsEquippedLabel: UILabel!
    var hatsEquippedRecieved = ""
    var hatsInvRecieved : [String] = []
    var hatsSelection = 0
    
    @IBOutlet weak var weaponsEquippedLabel: UILabel!
    var weaponsEquippedRecieved = ""
    var weaponsInvRecieved : [String] = []
    var weaponsSelection = 0
    
    func invUpdate() {
        
        if topsInvRecieved.count > 0 {
            if topsSelection > topsInvRecieved.count - 1 {
                        topsSelection = topsInvRecieved.count - 1
                    }
                    else if topsSelection <= 0 {
                        topsSelection = 0
                    }
                    topsEquippedLabel.text = topsInvRecieved[topsSelection]
        }
        else {
            topsEquippedLabel.text = "None"
        }
        
        if pantsInvRecieved.count > 0 {
            if pantsSelection > pantsInvRecieved.count - 1 {
                        pantsSelection = pantsInvRecieved.count - 1
                    }
                    else if pantsSelection <= 0 {
                        pantsSelection = 0
                    }
                    pantsEquippedLabel.text = pantsInvRecieved[pantsSelection]
        }
        else {
            pantsEquippedLabel.text = "None"
        }
        
        if hatsInvRecieved.count > 0 {
            if hatsSelection > hatsInvRecieved.count - 1 {
                        hatsSelection = hatsInvRecieved.count - 1
                    }
                    else if hatsSelection <= 0 {
                        hatsSelection = 0
                    }
                    hatsEquippedLabel.text = hatsInvRecieved[hatsSelection]
        }
        else {
            hatsEquippedLabel.text = "None"
        }
        
        if shoesInvRecieved.count > 0 {
            if shoesSelection > shoesInvRecieved.count - 1 {
                        shoesSelection = shoesInvRecieved.count - 1
                    }
                    else if shoesSelection <= 0 {
                        shoesSelection = 0
                    }
                    shoesEquippedLabel.text = shoesInvRecieved[shoesSelection]
        }
        else {
            shoesEquippedLabel.text = "None"
        }
        
        if socksInvRecieved.count > 0 {
            if socksSelection > socksInvRecieved.count - 1 {
                        socksSelection = socksInvRecieved.count - 1
                    }
                    else if socksSelection <= 0 {
                        socksSelection = 0
                    }
                    socksEquippedLabel.text = socksInvRecieved[socksSelection]
        }
        else {
            socksEquippedLabel.text = "None"
        }
        
        if weaponsInvRecieved.count > 0 {
            if weaponsSelection > weaponsInvRecieved.count - 1 {
                        weaponsSelection = weaponsInvRecieved.count - 1
                    }
                    else if weaponsSelection <= 0 {
                        weaponsSelection = 0
                    }
                    weaponsEquippedLabel.text = weaponsInvRecieved[weaponsSelection]
        }
        else {
            weaponsEquippedLabel.text = "None"
        }
        
        print(topsEquippedRecieved)
        print(pantsEquippedRecieved)
        print(shoesEquippedRecieved)
        print(socksEquippedRecieved)
        print(hatsEquippedRecieved)
        print(weaponsEquippedRecieved)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        invUpdate()
    }
    
    @IBAction func topsLeft(_ sender: UIButton) {
        topsSelection = topsSelection - 1
        invUpdate()
    }
    
    @IBAction func topsRight(_ sender: UIButton) {
        topsSelection = topsSelection + 1
        invUpdate()
    }
    
    @IBAction func pantsLeft(_ sender: UIButton) {
        pantsSelection = pantsSelection - 1
        invUpdate()
    }
    
    @IBAction func pantsRight(_ sender: UIButton) {
        pantsSelection = pantsSelection + 1
        invUpdate()
    }
    
    @IBAction func hatsLeft(_ sender: UIButton) {
        hatsSelection = hatsSelection - 1
        invUpdate()
    }
    
    @IBAction func hatsRight(_ sender: UIButton) {
        hatsSelection = hatsSelection + 1
        invUpdate()
    }
    
    @IBAction func shoesLeft(_ sender: UIButton) {
        shoesSelection = shoesSelection - 1
        invUpdate()
    }
    
    @IBAction func shoesRight(_ sender: UIButton) {
        shoesSelection = shoesSelection + 1
        invUpdate()
    }
    
    @IBAction func socksLeft(_ sender: UIButton) {
        socksSelection = socksSelection - 1
        invUpdate()
    }
    
    @IBAction func socksRight(_ sender: UIButton) {
        socksSelection = socksSelection + 1
        invUpdate()
    }
    
    @IBAction func weaponsLeft(_ sender: UIButton) {
        weaponsSelection = weaponsSelection - 1
        invUpdate()
    }
    
    @IBAction func weaponsRight(_ sender: UIButton) {
        weaponsSelection = weaponsSelection + 1
        invUpdate()
    }
    
    @IBAction func topsEquip(_ sender: UIButton) {
        if topsInvRecieved.count > 0 {
            topsEquippedRecieved = topsInvRecieved[topsSelection]
        }
        invUpdate()
    }
    
    @IBAction func pantsEquip(_ sender: UIButton) {
        if pantsInvRecieved.count > 0 {
            pantsEquippedRecieved = pantsInvRecieved[pantsSelection]
        }
        invUpdate()
    }
    
    @IBAction func shoesEquip(_ sender: UIButton) {
        if shoesInvRecieved.count > 0 {
            shoesEquippedRecieved = shoesInvRecieved[shoesSelection]
        }
        invUpdate()
    }
    
    @IBAction func socksEquip(_ sender: UIButton) {
        if socksInvRecieved.count > 0 {
            socksEquippedRecieved = socksInvRecieved[socksSelection]
        }
        invUpdate()
    }
    
    @IBAction func hatsEquip(_ sender: UIButton) {
        if hatsInvRecieved.count > 0 {
            hatsEquippedRecieved = hatsInvRecieved[hatsSelection]
        }
        invUpdate()
    }
    
    @IBAction func weaponsEquip(_ sender: UIButton) {
        if weaponsInvRecieved.count > 0 {
            weaponsEquippedRecieved = weaponsInvRecieved[weaponsSelection]
        }
        invUpdate()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let topsEquippedSender2 = segue.destination as! ViewController
        let pantsEquippedSender2 = segue.destination as! ViewController
        let shoesEquippedSender2 = segue.destination as! ViewController
        let socksEquippedSender2 = segue.destination as! ViewController
        let hatsEquippedSender2 = segue.destination as! ViewController
        let weaponsEquippedSender2 = segue.destination as! ViewController
        
        topsEquippedSender2.topsEquipped = topsEquippedRecieved
        pantsEquippedSender2.pantsEquipped = pantsEquippedRecieved
        shoesEquippedSender2.shoesEquipped = shoesEquippedRecieved
        socksEquippedSender2.socksEquipped = socksEquippedRecieved
        hatsEquippedSender2.hatsEquipped = hatsEquippedRecieved
        weaponsEquippedSender2.weaponEquipped = weaponsEquippedRecieved
    }

}
