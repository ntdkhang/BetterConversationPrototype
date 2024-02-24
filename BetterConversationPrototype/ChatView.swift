//
//  ChatView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/21/24.
//

import SwiftUI

struct ChatView: View {
    var messages: [Message] = exampleConversation
    var body: some View {
        ScrollView([.vertical]) {
            LazyVStack {
                ForEach(messages) {
                    ChatBubble(message: $0)
                }
            }
        }
        .defaultScrollAnchor(.bottom)
    }
}

struct ChatBubble: View {
    var message: Message
    var body: some View {
        if message.sender == User.me {
            ChatBubbleFromMe(message: message.text, imageName: message.sender.imageName)
        } else {
            ChatBubbleFromThem(message: message.text, imageName: message.sender.imageName)
        }
    }
}

struct AvatarIconView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct ChatBubbleFromMe: View {
    var message: String
    var imageName: String
    var color: Color {
        .blue
    }

    var body: some View {
        HStack {
            HStack(alignment: .bottom) {
                HStack {
                    Text(message)
                        .fontWeight(.semibold)
                }
                .padding(12)
                .frame(alignment: .trailing)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(color)
                }
                .padding(.leading, 24)

                VStack {
                    AvatarIconView(imageName: imageName)
                        .frame(width: 25)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

struct ChatBubbleFromThem: View {
    var message: String
    var imageName: String
    var color: Color {
        Color(red: 51 / 255, green: 52 / 255, blue: 53 / 255)
    }

    var body: some View {
        HStack {
            HStack(alignment: .bottom) {
                VStack {
                    AvatarIconView(imageName: imageName)
                        .frame(width: 25)
                }
                HStack {
                    Text(message)
                        .fontWeight(.semibold)
                }
                .padding(12)
                .frame(alignment: .leading)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(color)
                }
                .padding(.trailing, 24)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ChatView()
}
