//
//  ViewController.swift
//  Examples
//
//  Created by Artem on 20.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit
import Coordinator

class ViewController: UIViewController {

    lazy var label = UILabel()
    let viewModel: ViewControllerModel
    
    init(viewModel: ViewControllerModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        label.text = viewModel.labelText
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    deinit {
        print("Deinit", viewModel.labelText)
    }
}

class ViewControllerModel {
    
    let labelText: String
    
    init(labelText: String) {
        self.labelText = labelText
    }
}
