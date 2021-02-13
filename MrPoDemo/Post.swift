//Data model for single user info on fanslist
//depend on jason format

import SwiftUI

struct PostList: Codable {
    var list = [Post]()
}

//Data Model
struct Post: Codable {
    let id: Int //UserID
    let avatar: String //avatar and img name
    let vip: Bool // if vip
    let name: String
    let date: String
    
    var isFollowed: Bool// if followed
    
    let text: String //post concept
    let images: [String]//post pic
    
    var commentCount: Int
    var likeCount: Int
    var isLiked: Bool
}

func loadPostListData(_ fileName: String) -> PostList {
    //string -> url
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError( "Can not find \(fileName) in main bundle")
    }
    //get data from url
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Can not find \(url)")
    }
    //parse data
    guard let list = try? JSONDecoder().decode(PostList.self, from: data) else {
        fatalError("Can not parse post list json data")
    }
    return list
}
