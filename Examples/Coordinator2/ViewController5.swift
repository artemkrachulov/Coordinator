//
//  ViewController5.swift
//  Examples
//
//  Created by Artem on 21.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit

class ViewController5: ViewController {

    weak var coordinator: Coordinator2?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button1 = UIButton(type: .custom)
        button1.setTitle("VC #6", for: .normal)
        button1.setTitleColor(UIColor.brown, for: .normal)
        button1.addTarget(self, action: #selector(showVC2), for: .touchDown)
        
        let barButtorItem1 = UIBarButtonItem(customView: button1)
        
        let button2 = UIButton(type: .custom)
        button2.setTitle("Root", for: .normal)
        button2.setTitleColor(UIColor.brown, for: .normal)
        button2.addTarget(self, action: #selector(root), for: .touchDown)
        
        let barButtorItem2 = UIBarButtonItem(customView: button2)
        
        navigationItem.rightBarButtonItems = [barButtorItem1, barButtorItem2]
    }
    
    @objc func showVC2() {
        coordinator?.pushViewController6()
    }
    
    @objc func root() {
        navigationController?.popToRootViewController(animated: true)
    }
}
