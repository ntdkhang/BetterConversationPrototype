//
//  MessagesViewModel.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation
import SwiftUI

class MessagesViewModel: ObservableObject {
    @Published var messages: [Message] = exampleConversation

    func sendMessage(_ text: String) {
        messages.append(Message(text: text, sender: .me))
    }
}
