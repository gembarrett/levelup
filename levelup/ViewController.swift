//
//  ViewController.swift
//  levelup
//
//  Created by Gemma Barrett on 29/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var percentageLbl: UILabel!
    
    @IBOutlet weak var rings: RingsView!
    @IBOutlet weak var whiteRing: RingsView!
    @IBOutlet weak var redRing: RingsView!

    @IBAction func slider(sender: UISlider) {
        // everytime the arc length is changed in slider, run the code
        rings.endArc = CGFloat(sender.value)
        percentageLbl.text = String(format: "%5.2f %%", sender.value * 100)
    }
    
    @IBAction func whiteSlider(sender: UISlider) {
        whiteRing.endArc = CGFloat(sender.value)
    }
    
    @IBAction func redSlider(sender: UISlider) {
        redRing.endArc = CGFloat(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rings.endArc = 0.5
        rings.arcWidth = 35.0
        let backgroundTrackColour = UIColor(white: 0.15, alpha: 1.0)
        rings.arcBackgroundColour = backgroundTrackColour
        
        whiteRing.arcWidth = 25.0
        whiteRing.arcColour = UIColor.whiteColor()
        whiteRing.endArc = 0.5
        whiteRing.arcBackgroundColour = backgroundTrackColour
        
        redRing.arcWidth = 20.0
        redRing.arcColour = UIColor.redColor()
        redRing.endArc = 0.25
        redRing.arcBackgroundColour = backgroundTrackColour
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

