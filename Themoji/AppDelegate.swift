//
//  AppDelegate.swift
//  EmojiCommunicationsInc
//
//  Created by MobileAge Team on 05/01/16.
//  Copyright © 2016 MobileAge Team. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        UIApplication.sharedApplication().applicationSupportsShakeToEdit = false

        Fabric.with([Crashlytics.self])
        
        return true
    }
    
    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        let url = url.standardizedURL
        let emoji = url?.absoluteString.componentsSeparatedByString("/").last
        
        NSNotificationCenter.defaultCenter().postNotificationName("ShowEmoji", object: emoji)
        
        return true
    }
}

