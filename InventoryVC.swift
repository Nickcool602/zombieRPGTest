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
    
    @IBOutlet weak var hatsEquippedLabel: UILabel!
    var hatsEquippedRecieved = ""
    var hatsInvRecieved : [String] = []
    var hatsSelection = 0
    
    @IBOutlet weak var shoesEquippedLabel: UILabel!
    var shoesEquippedRecieved = ""
    var shoesInvRecieved : [String] = []
    var shoesSelection = 0
    
    @IBOutlet weak var socksEquippedLabel: UILabel!
    var socksEquippedRecieved = ""
    var socksInvRecieved : [String] = []
    var socksSelection = 0
    
    func update() {
        if topsSelection > topsInvRecieved.count - 1 {
            topsSelection = topsInvRecieved.count - 1
        }
        else if topsSelection <= 0 {
            topsSelection = 0
        }
        topsEquippedLabel.text = topsInvRecieved[topsSelection]
        if pantsSelection > pantsInvRecieved.count - 1 {
            pantsSelection = pantsInvRecieved.count - 1
        }
        else if pantsSelection <= 0 {
            pantsSelection = 0
        }
        pantsEquippedLabel.text = pantsInvRecieved[pantsSelection]
        if hatsSelection > hatsInvRecieved.count - 1 {
            hatsSelection = hatsInvRecieved.count - 1
        }
        else if hatsSelection <= 0 {
            hatsSelection = 0
        }
        hatsEquippedLabel.text = hatsInvRecieved[hatsSelection]
        if shoesSelection > shoesInvRecieved.count - 1 {
            shoesSelection = shoesInvRecieved.count - 1
        }
        else if shoesSelection <= 0 {
            shoesSelection = 0
        }
        shoesEquippedLabel.text = shoesInvRecieved[shoesSelection]
        if socksSelection > socksInvRecieved.count - 1 {
            socksSelection = socksInvRecieved.count - 1
        }
        else if socksSelection <= 0 {
            socksSelection = 0
        }
        socksEquippedLabel.text = socksInvRecieved[socksSelection]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        update()
    }
    
    @IBAction func topsLeft(_ sender: UIButton) {
    }
    
    @IBAction func topsRight(_ sender: UIButton) {
    }
    
    @IBAction func pantsLeft(_ sender: UIButton) {
    }
    
    @IBAction func pantsRight(_ sender: UIButton) {
    }

}
