//
//  Route.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import Foundation

enum Route: Hashable {
    case followers
    case following
    case otherProfile(String)
    case OtherFollowers
    case OtherFollowing
}
