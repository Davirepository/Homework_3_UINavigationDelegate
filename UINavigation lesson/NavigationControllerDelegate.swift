//
//  NavigationControllerDelegate.swift
//  UINavigation lesson
//
//  Created by Давид on 16/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation
import UIKit

class NavigationControllerDelegate: UIViewController {
}

extension NavigationControllerDelegate: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print(viewController)
    }
}
