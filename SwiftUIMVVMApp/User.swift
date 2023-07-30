//
//  User.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import Foundation

struct User: Identifiable {
    var id: String
    var displayNme: String
    var userName: String
    var followers: [User] = [User]()
    var following: [User]  = [User] ()
    
    static var emptyUser = User(id: "", displayNme: "", userName: "")
    static var mockUser = User(id: "moh", displayNme: "ahm", userName: "ism")
    static var  allUsers = [User(id: "moh1", displayNme: "ahm1", userName: "ism1"), User(id: "moh2", displayNme: "ahm2", userName: "ism2"),
                            User(id: "moh3", displayNme: "ahm3", userName: "ism3"), User(id: "moh4", displayNme: "ahm4", userName: "ism4"),]
}
