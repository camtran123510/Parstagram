//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Cam Tran on 5/3/21.
//

import UIKit
import Parse
import AlamofireImage

// Don't forget to install Parse pods!
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        
        // --- Copy this only
        
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "iJNxI729VX0AWELJAo0CesVE8IoVLNA03hUrxqcu" // <- UPDATE
                $0.clientKey = "Ny10l46Upki7JblFpLOagww1qZCVoPPuOH0TgmBG" // <- UPDATE
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        // --- end copy
        
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

