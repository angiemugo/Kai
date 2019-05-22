//
//  UITextField+Extension.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit

extension UITextField {

    func setupDefaultTextfieldConfig() {
        self.layer.cornerRadius = 6
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.light_yellow_fg.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.2)
        self.layer.shadowColor = UIColor.appViewShadowColor.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 0.3
    }

    func addLeftRightPadding(ofSize size: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
        self.leftView = paddingView
        self.leftViewMode = .always
        self.rightView = paddingView
        self.rightViewMode = .always
    }

    func togglePasswordVisibility() {
        isSecureTextEntry = !isSecureTextEntry

        if let existingText = text, isSecureTextEntry {
            deleteBackward()

            if let textRange = textRange(from: beginningOfDocument, to: endOfDocument) {
                replace(textRange, withText: existingText)
            }

            if let existingSelectedTextRange = selectedTextRange {
                selectedTextRange = nil
                selectedTextRange = existingSelectedTextRange
            }
        }
    }

    func interactiveSecurityToggle(_ status: Bool = false) {
        isSecureTextEntry = status

        if let existingText = text, isSecureTextEntry {
            deleteBackward()

            if let textRange = textRange(from: beginningOfDocument, to: endOfDocument) {
                replace(textRange, withText: existingText)
            }
        }

        if let existingSelectedRange = selectedTextRange {
            selectedTextRange = nil
            selectedTextRange = existingSelectedRange
        }
    }

}
