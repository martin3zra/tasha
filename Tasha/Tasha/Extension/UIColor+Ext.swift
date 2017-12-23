//
//  UIColor+Ext.swift
//  Tasha
//
//  Created by Alfredo Martinez on 12/22/17.
//  Copyright © 2017 Alfredo Martinez. All rights reserved.
//

import Foundation

extension UIColor {
    
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r, green: g, blue: b, alpha: 1)
    }
    
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
