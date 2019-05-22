//
//  BaseViewController.swift
//  Kai
//
//  Created by Angie Mugo on 16/05/2019.
//  Copyright © 2019 Angie Mugo. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    let statusBarView = UIView().statusBarView()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        hideNavigation(true)
    }

    func hideNavigation(_ status: Bool) {
        self.navigationController?.isNavigationBarHidden = status
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
