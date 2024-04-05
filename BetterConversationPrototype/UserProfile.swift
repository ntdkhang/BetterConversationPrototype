//
//  User.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/16/24.
//

import Foundation

struct UserProfile: Identifiable, Equatable, Codable {
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

extension UserProfile {
    static var empty = UserProfile(name: "", DOB: Date.now, imageName: "", interests: .init())

    static var example: UserProfile {
        UserProfile(name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))
    }

    static var Khang: UserProfile = .init(name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))

    static var DauMoi: UserProfile = .init(name: "Đầu Moi", DOB: Date.now, imageName: "DauCatMoi", interests: .init(arrayLiteral: .meditation, .romance))

    static var KhaBanh: UserProfile = .init(name: "Khá Bảnh", DOB: Date.now, imageName: "KhaBanh", interests: .init(arrayLiteral: .family, .friendship))
}
