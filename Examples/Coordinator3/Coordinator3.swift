//
//  Coordinator3.swift
//  Examples
//
//  Created by Artem on 21.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import Foundation
import Coordinator
import UIKit

class Coordinator3: BaseCoordinator {
    
    weak var navigationController: UINavigationController?
    
    override func start() {
        
        let viewModel = ViewControllerModel(labelText: "View Controleler #7")
        let viewController = ViewController7(viewModel: viewModel)
        viewController.coordinator = self
        navigationController?.setViewControllers([viewController], animated: false)
    }
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
}

extension Coordinator3 {
    
    func pushViewController8() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #8")
        let viewController = ViewController8(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushViewController9() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #9")
        let viewController = ViewController9(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func dissmiss() {
        navigationController?.dismiss(animated: true)
    }
}
