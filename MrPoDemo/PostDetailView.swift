//
//  PostDetailView.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/14/21.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        List {
            PostCell(post: post)
                .listRowInsets(EdgeInsets())

            ForEach(1...10, id: \.self) { i in
                Text("comment \(i)")
            }
        }
        .navigationTitle("detail")
        .navigationBarTitleDisplayMode(.inline)//隐藏大标题
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: postList.list[0])
    }
}
