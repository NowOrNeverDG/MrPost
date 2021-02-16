//
//  PostListView.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/13/21.
//

import SwiftUI

struct PostListView: View {
    let category: PostListCategory//PostListView的复用
    
    var postList: PostList {
        switch category {
        case .recommend:
            return loadPostListData("PostListData_recommend_1.json")
        case .hot:
            return loadPostListData("PostListData_hot_1.json")
        }
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
            PostListView(category: .recommend)
                .navigationTitle("Title")
                .navigationBarHidden(true)
        }
    }
}
