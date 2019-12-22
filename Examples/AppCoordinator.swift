//
//  AppCoordinator.swift
//  Examples
//
//  Created by Artem on 20.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit
import Coordinator

class AppCoordinator: BaseCoordinator {

    let window : UIWindow

    init(window: UIWindow) {
        self.window = window
        super.init()
    }

    override func start() {

        // preparing root view
        let navigationController = UINavigationController()
        let coordinator = Coordinator1(navigationController: navigationController)

        // store child coordinator
        coordinator.store(in: self)
        coordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
