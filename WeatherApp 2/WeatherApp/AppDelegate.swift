//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Derrick Park on 2017-05-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabC = UITabBarController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)

        
        self.window?.rootViewController = tabC // Set tab bar controller as a root view controller
        
        
        //Vancouver
        let VancouverVC = CityViewController()
        VancouverVC.city = City(name: "Vancouver", weather: "rainy")
        VancouverVC.title = "VANCOUVER"

    
        VancouverVC.tabBarItem.image = UIImage(named: "sunny-1")
        VancouverVC.tabBarItem.title = "vancouver"
        
        
        //Seoul
        let SeoulVC = CityViewController()
        SeoulVC.view.backgroundColor = .yellow
        SeoulVC.city = City(name: "Seoul", weather: "Sunny")
        SeoulVC.title = "SEOUL"
        
    
        SeoulVC.tabBarItem.image = UIImage(named: "sunny-1")
        SeoulVC.tabBarItem.title = "Seoul"


        
        //Tokyo
        let TokyoVC = CityViewController()
        TokyoVC.view.backgroundColor = .green
        TokyoVC.city = City(name: "Tokyo", weather: "Sunny")
        TokyoVC.title = "TOKYO"
        
        
        TokyoVC.tabBarItem.image = UIImage(named: "sunny-1")
        TokyoVC.tabBarItem.title = "Tokyo"
        
        
        //Mexico
        let MexicoVC = CityViewController()
        MexicoVC.view.backgroundColor = .orange
        MexicoVC.city = City(name: "Mexico", weather: "Sunny")
        MexicoVC.title = "MEXICO CITY"
        
        
        MexicoVC.tabBarItem.image = UIImage(named: "sunny-1")
        MexicoVC.tabBarItem.title = "Mexico"
        
        //Rome
        let RomeVC = CityViewController()
        RomeVC.view.backgroundColor = .red
        RomeVC.city = City(name: "Rome", weather: "Sunny")
        RomeVC.title = "ROME"
        
        
        RomeVC.tabBarItem.image = UIImage(named: "sunny-1")
        RomeVC.tabBarItem.title = "Rome"
        
        
        
        //Put view controllers at tab bar controller
        tabC.viewControllers = [VancouverVC, SeoulVC, TokyoVC, MexicoVC, RomeVC]
        
        
        
        // Navigation Controller
        let navVCVan = UINavigationController()
        navVCVan.setViewControllers([VancouverVC], animated: true)
        
        let navVCSeoul = UINavigationController()
        navVCSeoul.setViewControllers([SeoulVC], animated: true)
        
        let navVCTokyo = UINavigationController()
        navVCTokyo.setViewControllers([TokyoVC], animated: true)
        
        let navVCMex = UINavigationController()
        navVCMex.setViewControllers([MexicoVC], animated: true)

        let navVCRome = UINavigationController()
        navVCRome.setViewControllers([RomeVC], animated: true)

        
        //Set the navigation controller to tab bar controller
        tabC.setViewControllers([navVCVan, navVCSeoul, navVCTokyo, navVCMex, navVCRome], animated: true)
        
    
        window?.makeKeyAndVisible()
        return true
    }


}

