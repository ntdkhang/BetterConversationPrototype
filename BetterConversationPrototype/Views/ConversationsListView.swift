//
//  ConversationsListView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import SwiftUI

struct ConversationsListView: View {
    @ObservedObject var conversationsVM = ConversationsViewModel()
    var body: some View {
        NavigationStack {
            List {
                ForEach(conversationsVM.conversations) { conversation in
                    NavigationLink {
                        // ChatView(conversationsVM: conversationsVM, conversation: conversation)
                    } label: {
                        ConversationRow(partnerId: conversation.partner, lastMessage: Message(text: conversation.chatName, sender: UserProfile.Khang))
                    }
                }
            }
        }
        .onAppear {
            conversationsVM.fetchData()
        }
    }
}

struct ConversationRow: View {
    var partnerId: String
    var lastMessage: Message?
    var body: some View {
        HStack {
            Image(partner.imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(partner.name)
                    .bold()
                Text(lastMessage?.text ?? "")
                    .font(.footnote.weight(.light))
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            if lastMessage != nil {
                Text(lastMessage!.timeSent, style: .time)
                    .font(.footnote)
            }
        }
    }

    var partner: UserProfile {
        UserProfile.Khang
    }
}

// #Preview {
//     ConversationsListView()
// }
