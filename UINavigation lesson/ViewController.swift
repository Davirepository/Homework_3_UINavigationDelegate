//
//  ViewController.swift
//  UINavigation lesson
//
//  Created by Давид on 14/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.black
        button.setTitle("Back!", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 32, y: 360 + 60, width: view.frame.width - 64, height: 50)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        
        /// Hide button if tabBar are using
        if (navigationController?.children) != nil {
                view.addSubview(button)
        }

    }

    @objc func tapButton() {
        guard let navigationController = navigationController else { return }
        navigationController.popViewController(animated: true)
    }
    
}

