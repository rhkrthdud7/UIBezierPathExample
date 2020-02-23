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
        
        let rect = bounds.insetBy(dx: 20, dy: 50)
        let pathRect = UIBezierPath(rect: rect)
        UIColor.lightGray.setStroke()
//        pathRect.stroke()
        
        let pathOval = UIBezierPath(ovalIn: rect)
        UIColor.yellow.setFill()
        UIColor.lightGray.withAlphaComponent(0.5).setStroke()
        pathOval.lineWidth = 30
        pathOval.fill()
        pathOval.stroke()
    }
    
}
