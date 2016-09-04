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
    
    @IBOutlet weak var scoutLbl: UILabel!
    @IBOutlet weak var pyroLbl: UILabel!
    @IBOutlet weak var demomanLbl: UILabel!
    
    func dataTab(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        dataTabs.selectedItem = killsTab
        switch item.tag {
        case 1:
            print("kills")
            redRing.endRing = 0.48
            orangeRing.endRing = 0.90
            yellowRing.endRing = 0.15
        case 2:
            print("damage")
            redRing.endRing = 0.14502
            orangeRing.endRing = 0.24762
            yellowRing.endRing = 0.04710
        case 3:
            print("points")
            redRing.endRing = 0.105
            orangeRing.endRing = 0.177
            yellowRing.endRing = 0.022
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
        scoutLbl.textColor = UIColor.redColor()

        orangeRing.ringColour = UIColor.orangeColor()
        orangeRing.ringStrokeWidth = 30.0
        orangeRing.ringBackgroundColour = backgroundRingColour
        pyroLbl.textColor = UIColor.orangeColor()
        
        yellowRing.ringColour = UIColor.yellowColor()
        yellowRing.ringStrokeWidth = 25.0
        yellowRing.ringBackgroundColour = backgroundRingColour
        demomanLbl.textColor = UIColor.yellowColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

