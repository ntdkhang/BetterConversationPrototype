//
//  BetterConversationPrototypeApp.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/3/24.
//

import SwiftData
import SwiftUI

@main
struct BetterConversationPrototypeApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView()
                .preferredColorScheme(.dark)
        }
    }
}
