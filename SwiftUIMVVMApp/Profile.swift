//
//  Profile.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct Profile: View {
    @State var path = NavigationPath()
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack(path: $path){
            VStack {
                if vm.profileUIState == .loading {
                    ProgressView()
                }else {
                    VStack {
                        HeaderView(user: vm.currentUser)
                        InfoView()
                        FollowCountView(followers: vm.currentUser.followers, following: vm.currentUser.following)
                        EditButton()
                        PostsListView()
                        
                    }
                }
            }
            .task {
                vm.fetchProfile()
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Route.self) { route in
                switch route {
                    
                case .followers:
                    FollowersView(followers: vm.currentUser.followers)
                case .following:
                    FollowingView(following: vm.currentUser.following)
                    
                
                case let  .otherProfile(otherUserId):
                    OtherProfile(vm: vm, otherUserId: otherUserId)
                case .OtherFollowers:
                    OtherFollowers(followers: vm.otherUser.followers, path: $path)
                case .OtherFollowing:
                    OtherFollowing(following: vm.otherUser.following, path: $path)
                }
            }
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
