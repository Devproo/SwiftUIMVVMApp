//
//  OtherFollowing.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct OtherFollowing: View {
    var following: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(following) { user in
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
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowing_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowing(following: User.allUsers, path: .constant(NavigationPath()))
    }
}
