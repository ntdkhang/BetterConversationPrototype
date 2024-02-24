//
//  Message.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation

struct Message: Identifiable {
    let id: UUID = .init()
    let text: String
    let sender: User
    let timeSent: Date = .now
}

var exampleConversation: [Message] {
    [
        Message(text: "Vàng bạc mày to nhờ", sender: User.them),
        Message(text: "Cho bố cái địa chỉ", sender: User.me),
        Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
        Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
    ]
}
