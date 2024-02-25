//
//  Conversation.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import Foundation

struct Conversation: Identifiable {
    var id = UUID()
    var partner: User
    var messages: [Message]

    var lastMessage: Date? {
        messages.last?.timeSent
    }

    mutating func sendMessage(_ text: String) {
        messages.append(Message(text: text, sender: .me))
    }
}

extension Conversation {
    static var exampleConversation: [Message] {
        [
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
            Message(text: "Vàng bạc mày to nhờ", sender: User.them),
            Message(text: "Cho bố cái địa chỉ", sender: User.me),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.me),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.them),
        ]
    }

    static var messagesWithBanh: [Message] {
        [
            Message(text: "Tóc như lông lồn", sender: User.me),
            Message(text: "Đầu năm Bảnh lên chúc tết mọi người, mà mọi người lại chửi Bảnh là tóc như lông lồn", sender: User.KhaBanh),
            Message(text: ".", sender: User.me),
            Message(text: ".", sender: User.me),
            Message(text: "Đây là tiền của em tôi nợ anh", sender: User.KhaBanh),
            Message(text: "Thế còn việc em của anh đánh em tôi thì anh tính sao?", sender: User.KhaBanh),
            Message(text: "Là do nó sai ", sender: User.me),
            Message(text: "Vay tiền không trả, lại còn định bỏ trốn", sender: User.me),
            Message(text: "Tôi lói cho anh biết này, ở cái xã hội lày đéo có chuyện đúng sai", sender: User.KhaBanh),
            Message(text: "Chỉ có kẻ yếu và mạnh, thế thôi", sender: User.KhaBanh),
            Message(text: "Còn bọn mày đánh em tao thì tao đánh chúng mày.", sender: User.KhaBanh),
            Message(text: "PHANG LÓ!!", sender: User.KhaBanh),
        ]
    }

    static var withDauMoi: Conversation = .init(partner: .them, messages: exampleConversation)
    static var withKhaBanh = Conversation(partner: .KhaBanh, messages: messagesWithBanh)
}
