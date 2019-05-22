//
//  ForgotPasswordViewController.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: BaseViewController {

    //nav bar
    let navBar: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

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

    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.FORGOT_PASSWORD_TITLE
        label.textColor = UIColor.white
        label.font = UIFont.mySFHeavy(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let enterEmailLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.RESET_LINK_TITLE
        label.textColor = UIColor.white
        label.font = UIFont.mySFRegular(ofSize: 9)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let sendLinkButton: UIButton = {
        let button = UIButton()
        button.setTitle(Constants.SEND_LINK_TITLE, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont.mySFHeavy(ofSize: 14)
        button.backgroundColor = UIColor.light_yellow_fg
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let emailTextfield: KaiEmailField = {
        let field = KaiEmailField()
        field.textColor = UIColor.white
        field.placeholder = "Enter Email Address"
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()

    struct Constants {
        static let FORGOT_PASSWORD_TITLE = "Forgot password"
        static let RESET_LINK_TITLE = "Enter your email address and we shall send you a reset link"
        static let ENTER_EMAIL_TITLE = "Enter Email Address"
        static let SEND_LINK_TITLE = "Send link"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
}
