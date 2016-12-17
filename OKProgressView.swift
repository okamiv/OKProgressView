        //
//  OKProgressView.swift
//  WeiBo
//
//  Created by Okami on 2016/12/17.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class OKProgressView: UIView {

    var progress : CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(frame)
        
        let center = CGPoint(x: rect.width * 0.5, y: rect.height * 0.5)
        let redius = rect.width * 0.5 - 3
        let startAngle = CGFloat(-M_PI_2)
        let endAngle = CGFloat(2 * M_PI) * progress + startAngle
        let path = UIBezierPath(arcCenter: center, radius: redius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.addLine(to: center)
        path.close()
        
        UIColor(white: 1.0, alpha: 0.4).setFill()
        
        path.fill()
        
        
    }
    

}
