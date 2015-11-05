//
//  AppDelegate.swift
//  NSURLProtocolStudy
//
//  Created by Yohei Okubo on 11/5/15.
//  Copyright © 2015 Yohei Okubo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        let myViewController = MyViewController()
        self.window!.rootViewController = myViewController
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
}

