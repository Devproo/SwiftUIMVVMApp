//
//  EditButton.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct EditButton: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 24, style: .circular)
                    .fill(.white)
                    .shadow(radius: 5)
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .frame(width: 140, height: 32)
            }
            .buttonStyle(.bordered)
            .frame(width: 140, height: 40)
        }
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}
