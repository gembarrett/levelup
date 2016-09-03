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
    
    func dataTab(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        dataTabs.selectedItem = killsTab
        switch item.tag {
        case 1:
            print("first")
            
        case 2:
            print("second")
        case 3:
            print("third")
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        dataTab(dataTabs, didSelectItem: killsTab)
        super.viewDidLoad()
        redRing.endRing = 0.15
        redRing.ringStrokeWidth = 35.0
        let backgroundRingColour = UIColor(white: 0.15, alpha: 1.0)
        redRing.ringBackgroundColour = backgroundRingColour
        
        orangeRing.ringStrokeWidth = 30.0
        orangeRing.ringColour = UIColor.orangeColor()
        orangeRing.endRing = 0.35
        orangeRing.ringBackgroundColour = backgroundRingColour
        
        yellowRing.endRing = 0.75
        yellowRing.ringColour = UIColor.yellowColor()
        yellowRing.ringStrokeWidth = 25.0
        yellowRing.ringBackgroundColour = backgroundRingColour
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

