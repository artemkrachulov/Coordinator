//
//  AppDelegate.swift
//  Examples
//
//  Created by Artem on 20.12.2019.
//  Copyright © 2019 Artem Krachulov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let appCoordinator = AppCoordinator(window: window!)
        appCoordinator.start()
        self.appCoordinator = appCoordinator

        return true
    }


}

