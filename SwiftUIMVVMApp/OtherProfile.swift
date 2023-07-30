//
//  OtherProfile.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct OtherProfile: View {
    @ObservedObject var vm: ViewModel
    
    var otherUserId: String
    
    var body: some View {
        VStack {
            if vm.otherProfileUIState == .loading {
                ProgressView()
            }else {
                VStack {
                    HeaderView(user: vm.otherUser)
                    InfoView()
                    OtherFollowCount(followers: vm.otherUser.followers, following: vm.otherUser.following)
                    EditButton()
                    PostsListView()
                    
                }
            }
        }
        .task {
            vm.resetOtherProfile(otherUserId: otherUserId)
            vm.fetchOtherProfile(otherUserId: otherUserId)
        }
        .navigationTitle("\(vm.otherUser.userName)")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationDestination(for: Route.self) { route in
//            switch route {
//            case .followers:
//                FollowersView(followers: vm.currentUser.followers)
//            case .following:
//                FollowingView(following: vm.currentUser.following)
//            }
//                
//            }
    }
}

struct OtherProfile_Previews: PreviewProvider {
    static var previews: some View {
        OtherProfile(vm: ViewModel(), otherUserId: "")
    }
}
