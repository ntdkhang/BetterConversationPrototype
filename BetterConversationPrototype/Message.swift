//
//  Message.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation

struct Message: Identifiable {
    var id = UUID()
    let text: String
    let sender: User
    let timeSent: Date = .now
}
