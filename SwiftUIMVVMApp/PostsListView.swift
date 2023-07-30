//
//  PostsListView.swift
//  SwiftUIMVVMApp
//
//  Created by ipeerless on 30/07/2023.
//

import SwiftUI

struct PostsListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { _ in
                    PostRow()
                }
            }
        }
    }
}

struct PostsListView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListView()
    }
}
