//
//  Message.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation

struct Message: Identifiable, Codable {
    let id: UUID
    let text: String
    let sender: User
    let timeSent: Date

    init(text: String, sender: User) {
        id = UUID()
        self.text = text
        self.sender = sender
        timeSent = .now
    }
}
