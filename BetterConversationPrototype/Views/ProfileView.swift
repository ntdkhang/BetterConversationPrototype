//
//  ProfileView.swift
//  BetterConversationPrototype
//
//  Created by Khang Nguyen on 2/7/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var user: User
    var body: some View {
        VStack {
            Text(user.name)
            Image("VaiLonLuon")
                .resizable()
                .frame(width: 100, height: 100)
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}
