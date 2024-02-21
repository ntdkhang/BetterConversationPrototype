//
//  UserProfileData.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/16/24.
//

import Foundation


struct UserProfileData: Identifiable {
    var id: UUID
    var name: String
    var DOB: Date
    var imageName: String
    var interests: Set<Interest>


    enum Interest {
        case career
        case romance
        case friendship
        case family
        case meditation
        case justChatting
    }
}

extension UserProfileData {
    static var example: UserProfileData {
        UserProfileData(id: UUID(), name: "Khang Nguyen", DOB: Date.now, imageName: "VaiLonLuon", interests: .init(arrayLiteral: .career, .romance))
    }
}


