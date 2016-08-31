//
//  RingsView.swift
//  levelup
//
//  Created by Gemma Barrett on 31/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class RingsView: UIView {
    
    var endRing:CGFloat = 0.0
    var ringStrokeWidth:CGFloat = 10.0
    var ringColour = UIColor.yellowColor()
    var ringBackgroundColour = UIColor.blackColor()

    override func drawRect(rect: CGRect) {
        let fullLoop = 2.0 * CGFloat(M_PI)
        let start:CGFloat = -0.25 * fullLoop
        let end:CGFloat = endRing * fullLoop + start
        
        var middleBit = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect))
        
        var radius:CGFloat = 0.0
        if CGRectGetWidth(rect) > CGRectGetHeight(rect) {
            radius = (CGRectGetWidth(rect) - ringStrokeWidth) / 2.0
        } else {
            radius = (CGRectGetHeight(rect) - ringStrokeWidth) / 2.0
        }
    }

}
