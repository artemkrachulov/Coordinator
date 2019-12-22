//
//  ViewController3.swift
//  Examples
//
//  Created by Artem on 21.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit

class ViewController3: ViewController {

    weak var coordinator: Coordinator1?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton()
        button.setTitle("VC #4", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.addTarget(self, action: #selector(showC2), for: .touchDown)
        
        let barButtorItem = UIBarButtonItem(customView: button)
        
        navigationItem.rightBarButtonItem = barButtorItem
    }
    
    @objc func showC2() {
        coordinator?.pushCoordinator2()
    }
}
