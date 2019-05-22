//
//  ResetPasswordController+UI.swift
//  Kai
//
//  Created by Angie Mugo on 21/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

extension ResetPasswordViewController {

    func setUpUI() {
        view.addSubview(contentView)

        if #available(iOS 11.0, *) {
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        } else {
            contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
        contentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        contentView.addSubview(unlockImage)
        contentView.addSubview(forgotPasswordLabel)
        contentView.addSubview(enterEmailLabel)
        contentView.addSubview(emailTextfield)
        contentView.addSubview(sendLinkButton)

        unlockImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        unlockImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 210).isActive = true
        unlockImage.widthAnchor.constraint(equalToConstant: 54).isActive = true
        unlockImage.heightAnchor.constraint(equalToConstant: 54).isActive = true

        forgotPasswordLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        forgotPasswordLabel.topAnchor.constraint(equalTo: unlockImage.bottomAnchor, constant: 18).isActive = true

        enterEmailLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        enterEmailLabel.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 8).isActive = true

        emailTextfield.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 32).isActive = true
        emailTextfield.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -32).isActive = true
        emailTextfield.topAnchor.constraint(equalTo: enterEmailLabel.bottomAnchor, constant: 24).isActive = true
        emailTextfield.heightAnchor.constraint(equalToConstant: 55).isActive = true

        sendLinkButton.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 16).isActive = true
        sendLinkButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        sendLinkButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        sendLinkButton.widthAnchor.constraint(equalToConstant: 214).isActive = true
    }
}
