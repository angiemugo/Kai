//
//  UIColor+Extension.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift

extension UIColor {

    static let appViewShadowColor = UIColor(red:0, green:0, blue:0, alpha:0.25)

    //foreground colors
    static let light_yellow_fg = UIColor(red: 243/255, green: 202/255, blue: 62/255, alpha: 1)
    //background colors
    static let blue_background = UIColor(red: 6/255, green: 119/255, blue: 226/255, alpha: 1)

    convenience init(hexString: String) {
        let r, g, b, a: CGFloat

        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])

            if hexString.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        self.init(white: 0, alpha: 1)
    }
}
