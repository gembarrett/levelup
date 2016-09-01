//
//  ViewController.swift
//  levelup
//
//  Created by Gemma Barrett on 31/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redRing.endRing = 0.5
        redRing.ringStrokeWidth = 35.0
        let backgroundRingColour = UIColor(white: 0.15, alpha: 1.0)
        redRing.ringBackgroundColour = backgroundRingColour
        
        orangeRing.ringStrokeWidth = 30.0
        orangeRing.ringColour = UIColor.orangeColor()
        orangeRing.endRing = 0.5
        orangeRing.ringBackgroundColour = backgroundRingColour
        
        yellowRing.endRing = 0.25
        yellowRing.ringColour = UIColor.yellowColor()
        yellowRing.ringStrokeWidth = 25.0
        yellowRing.ringBackgroundColour = backgroundRingColour
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

