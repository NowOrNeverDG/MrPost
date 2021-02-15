//
//  PostListView.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/13/21.
//

import SwiftUI

struct PostListView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    var body: some View {
        List {
            ForEach(postList.list) { post in
                ZStack{
                    PostCell(post: post)
                    NavigationLink(destination: PostDetailView(post: post)) {
                        EmptyView()
                    }
                    .hidden()
                }
                .listRowInsets(EdgeInsets())
            }
        }
        
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PostListView()
                .navigationTitle("Title")
                .navigationBarHidden(true)
        }
    }
}
