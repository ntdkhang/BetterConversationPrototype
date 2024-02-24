//
//  ConversationsListView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import SwiftUI

struct ConversationsListView: View {
    var body: some View {
        List {
            LazyVStack {
                ForEach(1 ..< 3) {}
            }
        }
    }
}

#Preview {
    ConversationsListView()
}
