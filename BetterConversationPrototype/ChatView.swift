//
//  ChatView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/21/24.
//

import SwiftUI

struct ChatView: View {
    var messages: [String] = []
    var body: some View {
        VStack {
            ChatBubble(message: "Vàng bạc mày to nhờ", isSender: false)
            ChatBubble(message: "Cho bố cái địa chỉ", isSender: true)
            ChatBubble(message: "Địt mẹ mày nói ít thôi", isSender: true)
        }
    }
}

struct ChatBubble: View {
    var message: String
    var isSender: Bool
    var alignment: Alignment {
        isSender ? .trailing : .leading
    }

    var body: some View {
        VStack {
            HStack {
                Text(message)
            }
            .frame(maxWidth: .infinity, alignment: alignment)
        }
    }
}

#Preview {
    ChatView()
}
