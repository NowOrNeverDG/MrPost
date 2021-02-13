//
//  PostCell.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/11/21.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    var body: some View {
        HStack(spacing: 5){
            Image(uiImage: UIImage(named: post.avatar)!)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                    PostVIPBadge(vip: post.vip)
                        .offset(x: 16, y: 16)
                )
                
            
            //Nickname & Data comb
            VStack(alignment: .leading, spacing: 5) {
                Text(post.name)
                    .font(Font.system(size: 16))
                    .foregroundColor(Color.red)
                    .lineLimit(1)
                Text(post.date)
                    .font(.system(size:11))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            // follow & unfollow button
            if !post.isFollowed {
                Button (action: {
                    print("click follow button")
                }, label: {
                    Text("follow")
                        .font(.system(size:14))
                        .foregroundColor(.orange)
                        .frame(width:50, height:26)
                        .overlay(
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(Color.orange,lineWidth: 1)
                        )
                })
            }
        }
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: Post(avatar: "d0c21786ly1gavj2c0kcej20c8096dh7.jpg",
                            vip: true,
                            name: "Nick",
                            date: "2020-01-01 00:00",
                            isFollowed: false))
    }
}
