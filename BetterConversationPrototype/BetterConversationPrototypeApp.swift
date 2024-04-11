//
//  BetterConversationPrototypeApp.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/3/24.
//

import FirebaseAuth
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
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            AuthenticatedView {
                MenuView()
            }
            .environmentObject(AuthenticationViewModel())
            .preferredColorScheme(.dark)
        }
    }
}
