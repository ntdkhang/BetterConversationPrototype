//
//  ConversationsViewModel.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import FirebaseFirestore
import Foundation
import SwiftUI

class ConversationsViewModel: ObservableObject {
    @Published var conversations: [Conversation] = []
    // @Published var activeConversation: Conversation?
    private var db = Firestore.firestore()

//    func sendMessage(_ text: String, to conversation: Binding<Conversation>) {
//        if let index = conversations.firstIndex(where: { $0.id == conversation.wrappedValue.id }) {
//            conversations[index].messages.append(Message(text: text, sender: .Khang))
//            conversation.wrappedValue.messages.append(Message(text: text, sender: .Khang))
//        }
//    }

    func fetchData() {
        db.collection("conversations").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                print("NO DOCUMENTS")
                return
            }

            print(error ?? "")
            self.conversations = documents.compactMap { queryDocumentSnapshot -> Conversation? in
                try? queryDocumentSnapshot.data(as: Conversation.self)
            }
        }
    }
}
