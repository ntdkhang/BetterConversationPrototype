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
}
