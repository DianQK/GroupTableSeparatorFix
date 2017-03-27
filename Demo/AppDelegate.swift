//
//  AppDelegate.swift
//  Demo
//
//  Created by DianQK on 27/03/2017.
//  Copyright © 2017 dianqk. All rights reserved.
//

import UIKit
import GroupTableSeparatorFix

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        GroupTableSeparatorFix.removeFirstAndLastSeparatorLine()

        return true
    }

}

