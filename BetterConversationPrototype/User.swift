//
//  User.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/16/24.
//

import Foundation

struct User: Identifiable, Equatable {
    let id: UUID
    let name: String
    let DOB: Date
    let imageName: String
    let interests: Set<Interest>

    enum Interest {
        case career
        case romance
        case friendship
        case family
        case meditation
        case justChatting
    }
}

extension User {
    static var example: User {
        User(id: UUID(), name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))
    }

    static var me: User = .init(id: UUID(), name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))

    static var them: User = .init(id: UUID(), name: "Sua Buoi", DOB: Date.now, imageName: "DauCatMoi", interests: .init(arrayLiteral: .meditation, .romance))

    static var KhaBanh: User = .init(id: UUID(), name: "Kha Banh", DOB: Date.now, imageName: "KhaBanh", interests: .init(arrayLiteral: .family, .friendship))
}
