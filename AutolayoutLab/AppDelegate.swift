//
//  AppDelegate.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-06-27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        // window?.rootViewController = AnchorViewController()
        // window?.rootViewController = SafeAreaViewController()
        // window?.rootViewController = DefaultMarginGuideViewController()
        // window?.rootViewController = LayoutMarginViewController()
        // window?.rootViewController = ReadableContentGuideViewController()
        // window?.rootViewController = IntrinsicContentSizeInactionViewController()
        window?.rootViewController = CHCRViewController()
        
        return true
    }

}

