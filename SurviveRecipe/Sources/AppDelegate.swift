//
//  AppDelegate.swift
//  SurviveRecipe
//
//  Created by 김연준 on 2020/01/16.
//  Copyright © 2020 gadget502. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    let layout = UICollectionViewFlowLayout()
    var viewController = UIViewController()
    
    window.backgroundColor = .white
    
    UINavigationBar.appearance().barTintColor = UIColor.init(rgb: 0x282828)
    UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
    
    
    let statusBarBGView = UIView()
    statusBarBGView.backgroundColor = UINavigationBar.appearance().barTintColor
    
    viewController = UINavigationController(rootViewController: viewController())
    
    
    window.rootViewController = viewController
    window.makeKeyAndVisible()
    window.addSubview(statusBarBGView)
    window.addConstraintsWithFormat(format: "H:|[v0]|", views: statusBarBGView)
    window.addConstraintsWithFormat(format: "V:|[v0(20)]", views: statusBarBGView)
    

    
    self.window = window
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}

