//
//  AppDelegate.swift
//  Smack-chat-app
//
//  Created by Pravir Ahuja on 08/04/20.
//  Copyright © 2020 Priyank Ahuja. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        SocketService.instance.establishConnection()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        SocketService.instance.closeConnection()
    }

}

