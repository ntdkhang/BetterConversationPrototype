//
//  ChatView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/21/24.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var messagesVM = MessagesViewModel()
    @State private var currentText: String = ""
    var body: some View {
        VStack {
            ScrollView([.vertical]) {
                LazyVStack {
                    ForEach(messagesVM.messages) {
                        ChatBubble(message: $0)
                    }
                }
            }
            .defaultScrollAnchor(.bottom)
            textFieldView
                .padding(4)
        }
    }

    @ViewBuilder
    var textFieldView: some View {
        HStack {
            TextField("Type your message", text: $currentText, axis: .vertical)
                .padding(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray.opacity(0.5), lineWidth: 1)
                }
            if !currentText.isEmpty {
                withAnimation(Animation.easeInOut) {
                    Button {
                        // send message
                        messagesVM.sendMessage(currentText)
                        currentText = ""
                    } label: {
                        Image(systemName: "arrow.up.message.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.blue)
                    }
                    .frame(height: 30)
                }
            }
        }
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
