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
        
    @IBOutlet weak var scoutNumber: UILabel!
    @IBOutlet weak var demomanNumber: UILabel!
    @IBOutlet weak var pyroNumber: UILabel!
    
    private var dataArray = [Data]()
        
    func tabBar(dataTabs: UITabBar, didSelectItem item: UITabBarItem) {
        let data = dataArray[item.tag-1]
        self.updateUI(with: data)
    }
    
    private func updateUI(with data: Data) {
        scoutNumber.text = String(data.scoutInt)
        demomanNumber.text = String(data.demomanInt)
        pyroNumber.text = String(data.pyroInt)
        redRing.endRing = CGFloat(data.scoutFloat)
        orangeRing.endRing = CGFloat(data.demomanFloat)
        yellowRing.endRing = CGFloat(data.pyroFloat)
    }
    
    override func viewDidLoad() {
        let kills = Data()
        kills.scoutInt = 20
        kills.demomanInt = 20
        kills.pyroInt = 20
        kills.scoutFloat = 0.2
        kills.demomanFloat = 0.2
        kills.pyroFloat = 0.2
        dataArray.append(kills)
        
        let damage = Data()
        damage.scoutInt = 10
        damage.demomanInt = 10
        damage.pyroInt = 10
        damage.scoutFloat = 0.1
        damage.demomanFloat = 0.1
        damage.pyroFloat = 0.1
        dataArray.append(damage)
        
        let points = Data()
        points.scoutInt = 5
        points.demomanInt = 5
        points.pyroInt = 5
        points.scoutFloat = 0.05
        points.demomanFloat = 0.05
        points.pyroFloat = 0.05
        dataArray.append(points)
        
        self.updateUI(with: dataArray[0])
        
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

