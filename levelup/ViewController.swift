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
    
    @IBOutlet weak var killsTab: DataTab!
    @IBOutlet weak var damageTab: DataTab!
    @IBOutlet weak var pointsTab: DataTab!
    @IBOutlet weak var dataTabs: UITabBar!
        
    @IBOutlet weak var scoutNumber: UILabel!
    @IBOutlet weak var demomanNumber: UILabel!
    @IBOutlet weak var pyroNumber: UILabel!
        
    func dataTab(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        dataTabs.selectedItem = killsTab
        switch item.tag {
        case 1:
            print("kills")
            scoutNumber.text = String(killsTab.scoutInt)
            demomanNumber.text = String(killsTab.demomanInt)
            pyroNumber.text = String(killsTab.pyroInt)
            redRing.endRing = CGFloat(killsTab.scoutFloat)
            orangeRing.endRing = CGFloat(killsTab.demomanFloat)
            yellowRing.endRing = CGFloat(killsTab.pyroFloat)
        case 2:
            print("damage")
            scoutNumber.text = String(damageTab.scoutInt)
            demomanNumber.text = String(damageTab.demomanInt)
            pyroNumber.text = String(damageTab.pyroInt)
            redRing.endRing = CGFloat(damageTab.scoutFloat)
            orangeRing.endRing = CGFloat(damageTab.demomanFloat)
            yellowRing.endRing = CGFloat(damageTab.pyroFloat)
        case 3:
            print("points")
            scoutNumber.text = String(pointsTab.scoutInt)
            demomanNumber.text = String(pointsTab.demomanInt)
            pyroNumber.text = String(pointsTab.pyroInt)
            redRing.endRing = CGFloat(pointsTab.scoutFloat)
            orangeRing.endRing = CGFloat(pointsTab.demomanFloat)
            yellowRing.endRing = CGFloat(pointsTab.pyroFloat)
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

