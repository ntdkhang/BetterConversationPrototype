//
//  ConversationsViewModel.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation
import SwiftUI

class ConversationsViewModel: ObservableObject {
    @Published var conversations: [Conversation] = [.withDauMoi, .withKhaBanh]
    // @Published var activeConversation: Conversation?

    func sendMessage(_ text: String, to conversation: Conversation) {
        if let index = conversations.firstIndex(where: { $0.id == conversation.id }) {
            conversations[index].messages.append(Message(text: text, sender: .me))
        }
    }
}
