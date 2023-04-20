//
//  UIColor+Ext.swift
//  Colors
//
//  Created by Sayf Sahaf on 2023-04-20.
//

import UIKit


extension UIColor{
    static func randomColor() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return randomColor
    }
}
