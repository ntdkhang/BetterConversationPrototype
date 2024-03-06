//
//  BetterConversationPrototypeApp.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/3/24.
//

import FirebaseCore
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication,
                     didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        FirebaseApp.configure()
        return true
    }
}

@main
struct BetterConversationPrototypeApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView()
                .preferredColorScheme(.dark)
        }
    }
}
