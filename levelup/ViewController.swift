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
    
    @IBOutlet weak var scoutTab: UITabBarItem!
    @IBOutlet weak var pyroTab: UITabBarItem!
    @IBOutlet weak var demomanTab: UITabBarItem!
    
    @IBOutlet weak var characterTabs: UITabBar!
    
    func characterTab(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        switch item.tag {
        case 1:
            print("first")
            redRing.endRing = 0.15
        case 2:
            print("second")
        case 3:
            print("third")
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        characterTab(characterTabs, didSelectItem: scoutTab)
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

