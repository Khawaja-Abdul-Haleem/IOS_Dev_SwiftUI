//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOption: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        print("Finish Launching !!!!")
       
        return true
    }
}
