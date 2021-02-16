//
//  HomeView.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/15/21.
//

import SwiftUI

struct HomeView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 0) {
                    PostListView(category: .recommend)
                        .frame(width: UIScreen.main.bounds.width)
                    PostListView(category: .hot)
                        .frame(width: UIScreen.main.bounds.width)
                }
                
            })
            .edgesIgnoringSafeArea(.bottom)//忽略安全区
            .navigationBarItems(leading: HomeNavigationBar(leftPercent: 0))
            .navigationBarTitle("首页")
            //.navigationBarTitleDisplayMode(.inline)//这句话放在哪里都可以
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
