//
//  KaiPasswordField.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class KaiPasswordField: UITextField {

    let rightViewButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "showPassword").withRenderingMode(.alwaysTemplate), for: .normal)
        button.setImage(#imageLiteral(resourceName: "hidePassword").withRenderingMode(.alwaysTemplate), for: .selected)
        button.tintColor = UIColor.white
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

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
        self.textColor = UIColor.darkGray
        self.autocorrectionType = .no
        self.isSecureTextEntry = true
        self.setupDefaultTextfieldConfig()
        let leftImage = UIImageView(frame: CGRect(x: 10, y: 10, width: 32, height: 32))
        let image = #imageLiteral(resourceName: "unlock").withRenderingMode(.alwaysTemplate)
        leftImage.image = image
        leftImage.tintColor = UIColor.white
        leftImage.contentMode = .scaleAspectFit
        
        let view = UIView(frame: CGRect(x: 10, y: 10, width: 48, height: 48))
        view.addSubview(leftImage)
        self.leftView = view
        self.leftViewMode = .always
        rightViewButton.addTarget(self, action: #selector(hideToggle(_:)), for: .touchUpInside)
        self.rightView = rightViewButton
        self.rightViewMode = .always
    }

    @IBAction func hideToggle(_ sender: UIButton) {
        self.togglePasswordVisibility()
        sender.isSelected = !self.isSecureTextEntry
    }
}
