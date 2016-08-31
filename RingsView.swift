//
//  RingsView.swift
//  levelup
//
//  Created by Gemma Barrett on 31/08/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import UIKit

class RingsView: UIView {
    
    var endRing:CGFloat = 0.0 {
        didSet {
            setNeedsDisplay()
        }
    }
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
        
        let context = UIGraphicsGetCurrentContext()
        
        let colours = CGColorSpaceCreateDeviceRGB()
        
        CGContextSetLineWidth(context, ringStrokeWidth)
        CGContextSetLineCap(context, CGLineCap.Round)
        
        // dark ring behind yellow
        CGContextSetStrokeColorWithColor(context, ringBackgroundColour.CGColor)
        CGContextAddArc(context, middleBit.x, middleBit.y, radius, 0, fullLoop, 0)
        CGContextStrokePath(context)
        
        // yellow ring
        CGContextSetStrokeColorWithColor(context, ringColour.CGColor)
        // reduce width of stroke a bit so the background shows
        CGContextSetLineWidth(context, ringStrokeWidth * 0.8)
        CGContextAddArc(context, middleBit.x, middleBit.y, radius, start, end, 0)
        CGContextStrokePath(context)
    }

}
