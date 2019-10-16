//
//  RootViewController.swift
//  UINavigation lesson
//
//  Created by Давид on 14/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.black
        button.setTitle("Hello!", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 32, y: 360 + 60, width: view.frame.width - 64, height: 50)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return button
    }()
    
    let viewController = ViewController()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.addSubview(button)
        view.backgroundColor = .red
        
    }
    
    @objc func tapButton() {
        guard let navigation = navigationController else { return }
        navigation.pushViewController(viewController, animated: true)
    }
}
