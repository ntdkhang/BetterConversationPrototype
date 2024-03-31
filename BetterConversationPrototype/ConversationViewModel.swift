//
//  ConversationViewModel.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 3/26/24.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation

class ConversationViewModel: ObservableObject {
    var conversationID: String
    @Published var messages = [Message]()

    private var db = Firestore.firestore()
    init(conversationID: String) {
        self.conversationID = conversationID
    }
}
