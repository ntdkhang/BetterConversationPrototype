//
//  ConversationsListView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import SwiftUI

struct ConversationsListView: View {
    @State var conversations: [Conversation] = [.withDauMoi, .withKhaBanh]
    var body: some View {
        NavigationStack {
            List {
                ForEach(conversations) { conversation in
                    NavigationLink {
                        ChatView(conversation: conversation)
                    } label: {
                        ConversationRow(partner: conversation.partner, lastMessage: conversation.messages.last)
                    }
                }
            }
        }
    }
}

struct ConversationRow: View {
    var partner: User
    var lastMessage: Message?
    var body: some View {
        HStack {
            Image(partner.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Text(partner.name)
                Text(lastMessage?.text ?? "")
            }
            if lastMessage != nil {
                Text(lastMessage!.timeSent, style: .time)
            }
        }
    }
}

#Preview {
    ConversationsListView()
}
