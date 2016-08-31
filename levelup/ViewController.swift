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
    
    @IBAction func slider(sender: UISlider) {
        // everytime the arc length is changed in slider, run the code
        rings.endArc = CGFloat(sender.value)
        percentageLbl.text = String(format: "%5.2f %%", sender.value * 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

