//
//  Coordinator2.swift
//  Examples
//
//  Created by Artem on 21.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import Foundation
import Coordinator
import UIKit

class Coordinator2: BaseCoordinator {
    
    weak var navigationController: UINavigationController?
//    var childCoordinators: [Coordinator] = []
    
    override func start() {}
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
}

extension Coordinator2 {
    
    func pushViewController4() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #4")
        let viewController = ViewController4(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushViewController5() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #5")
        let viewController = ViewController5(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushViewController6() {
        let viewModel = ViewControllerModel(labelText: "View Controleler #6")
        let viewController = ViewController6(viewModel: viewModel)
        viewController.coordinator = self
        //
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func presentCoordinator3() {
        
        let navigationController = UINavigationController()
        let coordinator = Coordinator3(navigationController: navigationController)

        // store child coordinator
        coordinator.store(in: self)
        coordinator.start()
        
//        coordinator.isCompleted = { [weak self] in
//            self?.free(coordinator: coordinator)
//        }
        
        //
        self.navigationController?.present(navigationController, animated: true)
    }
}
