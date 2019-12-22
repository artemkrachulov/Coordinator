//
//  Coordinator1.swift
//  Examples
//
//  Created by Artem on 20.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import Foundation
import Coordinator
import UIKit

class Coordinator1: BaseCoordinator {
    
    weak var navigationController: UINavigationController?
//    var childCoordinators: [Coordinator] = []
    
    override func start() {
        
        let viewModel = ViewControllerModel(labelText: "View Controleler #1")
        let viewController = ViewController1(viewModel: viewModel)
        viewController.coordinator = self
        navigationController?.setViewControllers([viewController], animated: false)
    }
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
}

extension Coordinator1 {
    
    func pushViewController2() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #2")
        let viewController = ViewController2(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushViewController3() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #3")
        let viewController = ViewController3(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushCoordinator2() {
        
        let coordinator = Coordinator2(navigationController: navigationController)

        // store child coordinator
        coordinator.store(in: self)
        
        //
        coordinator.pushViewController4()
    }
}
