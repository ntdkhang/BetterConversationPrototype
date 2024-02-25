//
//  MenuView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/21/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        TabView {
            ConversationsListView()
                .tabItem {
                    Label("Chat", systemImage: "bubble.left.and.text.bubble.right.fill")
                }
            ProfileView(user: .example)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    MenuView()
}
