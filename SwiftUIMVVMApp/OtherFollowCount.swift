//
//  OtherFollowCount.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct OtherFollowCount: View {
    var followers: [User]
    var following: [User]
    
    var body: some View {
        HStack {
            Spacer()
            NavigationLink(value: Route.OtherFollowers) {
                VStack {
                    Text("\(followers.count)")
                    Text("Followers.")
                }
            }
            Spacer()
            NavigationLink(value: Route.OtherFollowing) {
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

struct OtherFollowCount_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowCount(followers: User.allUsers, following: User.allUsers)
    }
}
