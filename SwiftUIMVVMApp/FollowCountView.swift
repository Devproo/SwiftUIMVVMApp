//
//  FollowCountView.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct FollowCountView: View {
    var followers: [User]
    var following: [User]
    
    var body: some View {
        HStack {
            Spacer()
            NavigationLink(value: Route.followers) {
                VStack {
                    Text("\(followers.count)")
                    Text("Followers.")
                }
            }
            Spacer()
            NavigationLink(value: Route.following) {
                VStack {
                    Text("\(following.count)")
                    Text("following")
                }
                .foregroundColor(.black)
            }
            Spacer()
        }
    }
}

struct FollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        FollowCountView(followers: User.allUsers, following: User.allUsers)
    }
}
