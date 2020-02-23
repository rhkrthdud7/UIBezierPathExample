//
//  CustomView.swift
//  UIBezierPathExample
//
//  Created by Soso on 23/02/2020.
//  Copyright © 2020 Soso. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let pathLine = UIBezierPath()
        pathLine.move(to: .zero)
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        pathLine.addLine(to: center)
        UIColor.blue.setStroke()
        pathLine.stroke()
        
        let pathArc = UIBezierPath()
        pathArc.addArc(withCenter: center, radius: bounds.height/2, startAngle: 0, endAngle: .pi*2, clockwise: true)
        UIColor.red.setStroke()
        pathArc.stroke()
        
        let pathCurve = UIBezierPath()
        let downLeftCorner = CGPoint(x: 0, y: bounds.height)
        pathCurve.move(to: downLeftCorner)
        let upRightCorner = CGPoint(x: bounds.width, y: 0)
        let point1 = CGPoint(x: 0, y: 0)
        let point2 = CGPoint(x: bounds.width, y: bounds.height)
        pathCurve.addCurve(to: upRightCorner, controlPoint1: point1, controlPoint2: point2)
        UIColor.green.setStroke()
        pathCurve.stroke()
    }
    
}
