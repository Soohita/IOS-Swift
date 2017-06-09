//
//  AppDelegate.swift
//  Navigation
//
//  Created by KimSoo Ha on 2017-05-31.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let nav = UINavigationController()
        let vc1 = ViewController()
        
        nav.viewControllers = [vc1]
        
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        
        return true
    }




}

