//
//  AppDelegate.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TableVC()
        window?.makeKeyAndVisible()

        return true
    }

   


}

