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
    @IBOutlet weak var yellowRing: RingsView!
    @IBOutlet weak var whiteRing: RingsView!
    @IBOutlet weak var redRing: RingsView!
    @IBAction func yellowSlider(sender: UISlider) {
        yellowRing.endRing = CGFloat(sender.value)
        percentage.text = String(format:" %5.2f %%", sender.value * 100)
    }
    @IBAction func whiteSlider(sender: UISlider) {
        whiteRing.endRing = CGFloat(sender.value)
    }
    @IBAction func redSlider(sender: UISlider) {
        redRing.endRing = CGFloat(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        yellowRing.endRing = 0.5
        yellowRing.ringStrokeWidth = 35.0
        let backgroundRingColour = UIColor(white: 0.15, alpha: 1.0)
        yellowRing.ringBackgroundColour = backgroundRingColour
        
        whiteRing.ringStrokeWidth = 25.0
        whiteRing.ringColour = UIColor.whiteColor()
        whiteRing.endRing = 0.5
        whiteRing.ringBackgroundColour = backgroundRingColour
        
        redRing.endRing = 0.25
        redRing.ringColour = UIColor.redColor()
        redRing.ringStrokeWidth = 20.0
        redRing.ringBackgroundColour = backgroundRingColour
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

