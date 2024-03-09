//
//  User.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/16/24.
//

import Foundation

struct User: Identifiable, Equatable, Codable {
    let id: String
    let name: String
    let DOB: Date
    let imageName: String
    var interests: [Interest]

    enum Interest: String, Codable {
        case career
        case romance
        case friendship
        case family
        case meditation
        case justChatting
    }

    init(name: String, DOB: Date, imageName: String, interests: [Interest]) {
        id = UUID().uuidString
        self.name = name
        self.DOB = DOB
        self.imageName = imageName
        self.interests = interests
    }
}

extension User {
    static var example: User {
        User(name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))
    }

    static var me: User = .init(name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))

    static var them: User = .init(name: "Sua Buoi", DOB: Date.now, imageName: "DauCatMoi", interests: .init(arrayLiteral: .meditation, .romance))

    static var KhaBanh: User = .init(name: "Kha Banh", DOB: Date.now, imageName: "KhaBanh", interests: .init(arrayLiteral: .family, .friendship))
}
