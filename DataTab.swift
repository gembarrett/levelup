//
//  DataTab.swift
//  levelup
//
//  Created by Gemma Barrett on 04/09/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class Data {
    
    // each tab needs 3 x endRing values (>1.0), 3 x text values
    
    var scoutInt:Int = 0, demomanInt:Int = 0, pyroInt:Int = 0
    
    let max : Float
    
    var scoutFloat : Float {
        return Float(scoutInt) / max
    }
    
    var demomanFloat : Float {
        return Float(demomanInt) / max
    }

    var pyroFloat : Float {
        return Float(pyroInt) / max
    }
    
    init(max:Float) {
        self.max = max
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        print("changed")
    }

}
