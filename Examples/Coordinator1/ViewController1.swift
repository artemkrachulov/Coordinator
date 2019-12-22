//
//  ViewController1.swift
//  Examples
//
//  Created by Artem on 20.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit

class ViewController1: ViewController {

    weak var coordinator: Coordinator1?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(type: .custom)
        button.setTitle("VC #2", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.addTarget(self, action: #selector(showVC2), for: .touchDown)
        
        let barButtorItem = UIBarButtonItem(customView: button)
        
        navigationItem.rightBarButtonItem = barButtorItem
    }
    
    @objc func showVC2() {
        coordinator?.pushViewController2()
    }
}
