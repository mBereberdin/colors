//
//  UIColor+Ext.swift
//  Colors
//
//  Created by Михаил Беребердин on 16.05.2024.
//

import UIKit

extension UIColor {

    static func random() -> UIColor {
        let color = UIColor(red: .random(in: 0...1.0),
                            green: .random(in: 0...1.0),
                            blue: .random(in: 0...1.0),
                            alpha: 1)
        
        return color
    }
}
