//
//  ViewController.swift
//  levelup
//
//  Created by Gemma Barrett on 31/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var percentage: UILabel!
    @IBOutlet weak var redRing: RingsView!
    @IBOutlet weak var orangeRing: RingsView!
    @IBOutlet weak var yellowRing: RingsView!
//    @IBAction func whiteSlider(sender: UISlider) {
//        whiteRing.endRing = CGFloat(sender.value)
//    }
    
    @IBOutlet weak var scoutTab: UITabBarItem!
    @IBOutlet weak var pyroTab: UITabBarItem!
    @IBOutlet weak var demomanTab: UITabBarItem!
    
    @IBOutlet weak var characterTabs: UITabBar!
    
    var scoutKills:Float = 0.0, scoutDamage:Float = 0.0, scoutPoints:Float = 0.0
    var pyroKills:Float = 0.0, pyroDamage:Float = 0.0, pyroPoints:Float = 0.0
    var demomanKills:Float = 0.0, demomanDamage:Float = 0.0, demomanPoints:Float = 0.0
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
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

