//
//  AppDelegate.swift
//  HellowViper
//
//  Created by Eric Liu on 7/28/18.
//  Copyright © 2018 eric.liu. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.rootViewController?.view.backgroundColor = UIColor.orange
        window?.makeKeyAndVisible()
        return true
    }

}
