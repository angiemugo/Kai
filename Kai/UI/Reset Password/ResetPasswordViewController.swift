//
//  ResetPasswordViewController.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit

class ResetPasswordViewController: BaseViewController {

    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue_background
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let unlockImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "unlock"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let resetPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.RESET_PASSWORD_TITLE
        label.textColor = UIColor.white
        label.font = UIFont.mySFHeavy(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let setPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.SET_PASSWORD_TITLE
        label.textColor = UIColor.white
        label.font = UIFont.mySFRegular(ofSize: 9)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let passwordTextfield: KaiPasswordField = {
        let field = KaiPasswordField()
        field.textColor = UIColor.white
        field.placeholder = Constants.ENTER_PASSWORD_TITLE
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()

    let confirmPasswordTextfield: KaiPasswordField = {
        let field = KaiPasswordField()
        field.textColor = UIColor.white
        field.placeholder = Constants.CONFIRM_PASSWORD_TITLE
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()


    let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle(Constants.RESET_TITLE, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.mySFHeavy(ofSize: 14)
        button.backgroundColor = UIColor.light_yellow_fg
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    struct Constants {
        static let RESET_PASSWORD_TITLE = "Reset Password"
        static let SET_PASSWORD_TITLE = "Set a new Password"
        static let ENTER_PASSWORD_TITLE = "Enter New Password"
        static let CONFIRM_PASSWORD_TITLE = "Confirm New Password"
        static let RESET_TITLE = "Reset"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}
