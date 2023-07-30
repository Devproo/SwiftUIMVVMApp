//
//  InfoView.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        HStack {
            VStack(alignment:.leading) {
                Label("Last played", systemImage: "clock")
                    .foregroundColor(.gray)
                Label("ME", systemImage: "map")
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
