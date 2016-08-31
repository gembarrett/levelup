//
//  RingsView.swift
//  levelup
//
//  Created by Gemma Barrett on 29/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class RingsView: UIView {

    // where the arc ends
    var endArc:CGFloat = 0.0 { // 0.0 to 1
        // use this change in properties to draw the thing later
        didSet {
            // call this any time the endArc value changes
            setNeedsDisplay()
        }
    }
    // stroke width
    var arcWidth:CGFloat = 10.0
    var arcColour = UIColor.yellowColor()
    var arcBackgroundColour = UIColor.blackColor()

    override func drawRect(rect: CGRect) {
        
        // calculate radian of a full circle
        let fullCircle = 2.0 * CGFloat(M_PI)
        // use CGFloat between 0 and 1, multiplied by fullCircle, to describe any angle
        // move back to 12 (otherwise starts at 3)
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
        
        // can't draw without context
        let context = UIGraphicsGetCurrentContext()
        // specify colours
        let colours = CGColorSpaceCreateDeviceRGB()
        // stroke settings
        CGContextSetLineWidth(context, arcWidth)
        CGContextSetLineCap(context, CGLineCap.Round)
        
        // circle background drawn first because back to front

        // no UIColor
        CGContextSetStrokeColorWithColor(context, arcBackgroundColour.CGColor)
        // let's draw this thing
        // stick an arc on the path
        CGContextAddArc(context, middle.x, middle.y, radius, 0, fullCircle, 0)
        // draw a line from path
        CGContextStrokePath(context)
        
        // NOW draw the arc itself
        CGContextSetStrokeColorWithColor(context, arcColour.CGColor)
        CGContextSetLineWidth(context, arcWidth * 0.8)
        CGContextAddArc(context, middle.x, middle.y, radius, start, end, 0)
        CGContextStrokePath(context)
        
    }

}
