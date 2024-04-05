//
//  Message.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation

struct Message: Identifiable, Codable {
    let id: String
    let text: String
    let sender: UserProfile
    let timeSent: Date

    init(text: String, sender: UserProfile) {
        id = UUID().uuidString
        self.text = text
        self.sender = sender
        timeSent = .now
    }
}
