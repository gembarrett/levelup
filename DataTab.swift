//
//  DataTab.swift
//  levelup
//
//  Created by Gemma Barrett on 04/09/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class Data {
//    let scoutKills = 48
//    let demomanKills = 90
//    let pyroKills = 15
//    
//    let scoutDamage = 14502
//    let demomanDamage = 24762
//    let pyroDamage = 4710
//    
//    let scoutPoints = 105
//    let demomanPoints = 177
//    let pyroPoints = 22
    
    // each tab needs 3 x endRing values (>1.0), 3 x text values
    
    var scoutInt:Int = 0, demomanInt:Int = 0, pyroInt:Int = 0
    
    var scoutFloat:Float = 0.0, demomanFloat:Float = 0.0, pyroFloat: Float = 0.0

    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        print("changed")
    }

}
