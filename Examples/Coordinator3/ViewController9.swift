//
//  ViewController9.swift
//  Examples
//
//  Created by Artem on 21.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit

class ViewController9: ViewController {

    weak var coordinator: Coordinator3?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(type: .custom)
        button.setTitle("Dismiss", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.addTarget(self, action: #selector(dismisss), for: .touchDown)
        
        let barButtorItem = UIBarButtonItem(customView: button)
        
        navigationItem.rightBarButtonItem = barButtorItem
    }
    
    @objc func dismisss() {
        coordinator?.dissmiss()
//         navigationController?.dismiss(animated: true)
    }
}
