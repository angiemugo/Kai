//
//  ResetPasswordViewController+UI.swift
//  Kai
//
//  Created by Angie Mugo on 22/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

extension ResetPasswordViewController {

    func setupUI() {
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
        contentView.addSubview(resetPasswordLabel)
        contentView.addSubview(setPasswordLabel)
        contentView.addSubview(passwordTextfield)
        contentView.addSubview(confirmPasswordTextfield)
        contentView.addSubview(resetButton)

        unlockImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        unlockImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 210).isActive = true
        unlockImage.widthAnchor.constraint(equalToConstant: 54).isActive = true
        unlockImage.heightAnchor.constraint(equalToConstant: 54).isActive = true

        resetPasswordLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        resetPasswordLabel.topAnchor.constraint(equalTo: unlockImage.bottomAnchor, constant: 18).isActive = true

        setPasswordLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        setPasswordLabel.topAnchor.constraint(equalTo: resetPasswordLabel.bottomAnchor, constant: 8).isActive = true

        passwordTextfield.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 32).isActive = true
        passwordTextfield.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -32).isActive = true
        passwordTextfield.topAnchor.constraint(equalTo: setPasswordLabel.bottomAnchor, constant: 24).isActive = true
        passwordTextfield.heightAnchor.constraint(equalToConstant: 55).isActive = true

        confirmPasswordTextfield.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 32).isActive = true
        confirmPasswordTextfield.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -32).isActive = true
        confirmPasswordTextfield.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 24).isActive = true
        confirmPasswordTextfield.heightAnchor.constraint(equalToConstant: 55).isActive = true

        resetButton.topAnchor.constraint(equalTo: confirmPasswordTextfield.bottomAnchor, constant: 16).isActive = true
        resetButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        resetButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        resetButton.widthAnchor.constraint(equalToConstant: 214).isActive = true
    }
}
