//
//  Conversation.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/24/24.
//

import FirebaseFirestoreSwift
import Foundation

struct Conversation: Identifiable, Codable {
    @DocumentID var id: String?
    public let members: [String] // list of members' id
    public let isGroup: Bool
    public let imageURL: String
    public let chatName: String

    var partner: String {
        // Returns id of partner
        members.first { $0 != User.Khang.id } ?? ""
    }

    init(partner: User, messages _: [Message]) {
        id = UUID().uuidString
        members = [partner.id, User.Khang.id]
        isGroup = false
        chatName = partner.name
        imageURL = ""
    }

    init(chatName: String, members: [String], messages _: [Message]) {
        id = UUID().uuidString
        self.members = members
        isGroup = members.count > 2
        self.chatName = chatName
        imageURL = ""
    }
}

extension Conversation {
    static var exampleConversation: [Message] {
        [
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
            Message(text: "Vàng bạc mày to nhờ", sender: User.DauMoi),
            Message(text: "Cho bố cái địa chỉ", sender: User.Khang),
            Message(text: "Địt mẹ mày nói ít thôi", sender: User.Khang),
            Message(text: "Vãi lồn luôn đầu cắt moi", sender: User.DauMoi),
        ]
    }

    static var messagesWithBanh: [Message] {
        [
            Message(text: "Tóc như lông lồn", sender: User.Khang),
            Message(text: "Đầu năm Bảnh lên chúc tết mọi người, mà mọi người lại chửi Bảnh là tóc như lông lồn", sender: User.KhaBanh),
            Message(text: ".", sender: User.Khang),
            Message(text: ".", sender: User.Khang),
            Message(text: "Đây là tiền của em tôi nợ anh", sender: User.KhaBanh),
            Message(text: "Thế còn việc em của anh đánh em tôi thì anh tính sao?", sender: User.KhaBanh),
            Message(text: "Là do nó sai ", sender: User.Khang),
            Message(text: "Vay tiền không trả, lại còn định bỏ trốn", sender: User.Khang),
            Message(text: "Tôi lói cho anh biết này, ở cái xã hội lày đéo có chuyện đúng sai", sender: User.KhaBanh),
            Message(text: "Chỉ có kẻ yếu và mạnh, thế thôi", sender: User.KhaBanh),
            Message(text: "Còn bọn mày đánh em tao thì tao đánh chúng mày.", sender: User.KhaBanh),
            Message(text: "PHANG LÓ!!", sender: User.KhaBanh),
        ]
    }

    static var withDauMoi: Conversation = .init(partner: .DauMoi, messages: exampleConversation)
    static var withKhaBanh = Conversation(partner: .KhaBanh, messages: messagesWithBanh)
}
