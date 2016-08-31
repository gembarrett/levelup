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
    @IBAction func yellowSlider(sender: UISlider) {
        yellowRing.endRing = CGFloat(sender.value)
        percentage.text = String(format:" %5.2f %%", sender.value * 100)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        yellowRing.endRing = 0.5
        yellowRing.ringStrokeWidth = 35.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

