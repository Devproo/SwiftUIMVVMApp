//
//  ProfileView.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct HeaderView: View {
    var user: User
    var body: some View {
        HStack {
            Image(systemName: "person")
                .foregroundColor(.purple)
                .frame(width: 80, height: 80)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke( Color.purple, lineWidth: 2))
            VStack {
                Text("\(user.displayNme)")
                    .bold()
                Text("Adam Mohamed")
            }.padding(.leading, 5)
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(user: User.mockUser)
    }
}
