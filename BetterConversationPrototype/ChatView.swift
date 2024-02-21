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
            ChatBubbleFromThem(message: "Vàng bạc mày to nhờ")
            ChatBubbleFromMe(message: "Cho bố cái địa chỉ")
            ChatBubbleFromMe(message: "Địt mẹ mày nói ít thôi")
            ChatBubbleFromThem(message: "Vãi lồn luôn đầu cắt moi")
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
    var color: Color {
        .blue
    }

    var body: some View {
        HStack {
            HStack(alignment: .bottom) {
                HStack {
                    Text(message)
                }
                .padding(12)
                .frame(alignment: .trailing)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(color)
                }
                .padding(.leading, 24)

                VStack {
                    AvatarIconView(imageName: "DauCatMoi")
                        .frame(width: 25)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

struct ChatBubbleFromThem: View {
    var message: String
    var color: Color {
        .gray
    }

    var body: some View {
        HStack {
            HStack(alignment: .bottom) {
                VStack {
                    AvatarIconView(imageName: "VaiLonLuon")
                        .frame(width: 25)
                }

                HStack {
                    Text(message)
                }
                .padding(12)
                .frame(alignment: .leading)
                .background {
                    RoundedRectangle(cornerRadius: 10)
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
