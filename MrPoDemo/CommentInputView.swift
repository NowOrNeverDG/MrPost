//
//  CommentInputView.swift
//  MrPoDemo
//
//  Created by Ge Ding on 2/18/21.
//

import SwiftUI

struct CommentInputView: View {
    let post: Post
    @State private var text: String = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack(spacing: 0) {
            CommentTextView(text: $text)
            
            HStack(spacing:0) {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("取消").padding()
                })
                
                Spacer()
                
                Button(action: {
                    print(self.text)
                    var post = self.post
                    post.commentCount += 1
                    self.userData.update(post)
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("发送").padding()
                })
            }
            .font(.system(size: 18))
            .foregroundColor(.black)
        }
        
        
    }
}

struct CommentInputView_Previews: PreviewProvider {
    static var previews: some View {
        CommentInputView(post: UserData().recommendPostList.list[0])
    }
}
