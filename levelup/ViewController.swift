//
//  ViewController.swift
//  levelup
//
//  Created by Gemma Barrett on 31/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var redRing: RingsView!
    @IBOutlet weak var orangeRing: RingsView!
    @IBOutlet weak var yellowRing: RingsView!
    
    @IBOutlet weak var killsTab: UITabBarItem!
    @IBOutlet weak var damageTab: UITabBarItem!
    @IBOutlet weak var pointsTab: UITabBarItem!
    @IBOutlet weak var dataTabs: UITabBar!
        
    @IBOutlet weak var scoutNumber: UILabel!
    @IBOutlet weak var demomanNumber: UILabel!
    @IBOutlet weak var pyroNumber: UILabel!
    
    func dataTab(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        dataTabs.selectedItem = killsTab
        switch item.tag {
        case 1:
            print("kills")
            redRing.endRing = 0.48
            orangeRing.endRing = 0.90
            yellowRing.endRing = 0.15
            scoutNumber.text = String(redRing.endRing * 100)
            demomanNumber.text = String(orangeRing.endRing * 100)
            pyroNumber.text = String(yellowRing.endRing * 100)
        case 2:
            print("damage")
            redRing.endRing = 0.14502
            orangeRing.endRing = 0.24762
            yellowRing.endRing = 0.04710
            scoutNumber.text = String(redRing.endRing * 10000)
            demomanNumber.text = String(orangeRing.endRing * 10000)
            pyroNumber.text = String(yellowRing.endRing * 10000)
        case 3:
            print("points")
            redRing.endRing = 0.105
            orangeRing.endRing = 0.177
            yellowRing.endRing = 0.022
            scoutNumber.text = String(redRing.endRing * 1000)
            demomanNumber.text = String(orangeRing.endRing * 1000)
            pyroNumber.text = String(yellowRing.endRing * 1000)
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        dataTab(dataTabs, didSelectItem: killsTab)
        super.viewDidLoad()
        redRing.ringStrokeWidth = 35.0
        let backgroundRingColour = UIColor(white: 0.15, alpha: 1.0)
        redRing.ringBackgroundColour = backgroundRingColour

        orangeRing.ringColour = UIColor.orangeColor()
        orangeRing.ringStrokeWidth = 30.0
        orangeRing.ringBackgroundColour = backgroundRingColour
        
        yellowRing.ringColour = UIColor.yellowColor()
        yellowRing.ringStrokeWidth = 25.0
        yellowRing.ringBackgroundColour = backgroundRingColour
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

