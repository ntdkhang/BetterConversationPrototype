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
            Image(user.imageName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .padding()
            Text(user.name)
                .font(.title2)
                .bold()
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}
