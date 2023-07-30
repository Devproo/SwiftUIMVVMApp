//
//  OtherFollowers.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct OtherFollowers: View {
    var followers: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(followers) { user in
                    if user.id == "moh1" {
                        Button {
                            path = NavigationPath()
                        } label: {
                            UserRow(user: user)
                        }
                        
                    } else {
                        NavigationLink(value: Route.otherProfile(user.id)) {
                            UserRow(user: user)
                        }
                    }
                }
            }
        }
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowers_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowers(followers: User.allUsers, path: .constant(NavigationPath()))
    }
}
