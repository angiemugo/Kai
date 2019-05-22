//
//  UIFont+Extension.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit

extension UIFont {
    
    @objc class func mySFUltraLight(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.ultraLight)
    }

    @objc class func mySFThin(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.thin)
    }

    @objc class func mySFLight(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.light)
    }

    @objc class func mySFRegular(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.regular)
    }

    @objc class func mySFMedium(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.medium)
    }

    @objc class func mySFSemiBold(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.semibold)
    }

    @objc class func mySFBold(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.bold)
    }

    @objc class func mySFHeavy(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.heavy)
    }

    @objc class func mySFBlack(ofSize size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.black)
    }
}
