//
//  KaiEmailField.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit

class KaiEmailField: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    func setup() {
        self.font = UIFont.mySFRegular(ofSize: 16)
        self.textColor = UIColor.white
        self.autocorrectionType = .no
        self.isSecureTextEntry = true
        self.setupDefaultTextfieldConfig()
        let leftImage = UIImageView(frame: CGRect(x: 10, y: 10, width: 32, height: 32))
        let image = #imageLiteral(resourceName: "email").withRenderingMode(.alwaysTemplate)
        leftImage.tintColor = UIColor.white
        leftImage.image = image
        leftImage.contentMode = .scaleAspectFit

        let view = UIView(frame: CGRect(x: 10, y: 10, width: 48, height: 48))
        view.backgroundColor = UIColor.blue_background
        view.addSubview(leftImage)
        self.leftView = view
        self.leftViewMode = .always
    }
}
