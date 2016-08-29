//
//  RingsView.swift
//  levelup
//
//  Created by Gemma Barrett on 29/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class RingsView: UIView {

    override func drawRect(rect: CGRect) {
        // where the arc ends
        var endArc:CGFloat = 0.0 // 0.0 to 1
        // stroke width
        var arcWidth:CGFloat = 10.0
        var arcColor = UIColor.yellowColor()
        var arcBackgroundColor = UIColor.blackColor()
        
        // calculate radian of a full circle
        let fullCircle = 2.0 * CGFloat(M_PI)
        // use CGFloat between 0 and 1, multiplied by fullCircle, to describe any angle
        // move back to 12
        let start:CGFloat = -0.25 * fullCircle
        // use ending point from earlier with radian constant and offset by start
        let end:CGFloat = endArc * fullCircle + start
        
        // get the centre
        var middle = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect))
        // smallest side of view defines radius
        var radius:CGFloat = 0.0
        // so work out which side is shorter
        if CGRectGetWidth(rect) > CGRectGetHeight(rect) {
            // subtract stroke width so doesn't go outside the view
            // since radius == from centre to outside, divide by two
            radius = (CGRectGetWidth(rect) - arcWidth) / 2.0
        } else {
            radius = (CGRectGetHeight(rect) - arcWidth / 2.0)
        }
    }

}
