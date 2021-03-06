//
//  PostModel.swift
//  TikTok
//
//  Created by Michael Kang on 1/11/21.
//

import Foundation
import UIKit

struct PostModel {
    let identifier: String
    let user: User
    var isLikeByCurrentUser: Bool = false
    
    
    static func mockModel() -> [PostModel] {
        var posts = [PostModel]()
        for _ in 0...100 {
            let post = PostModel(
                identifier: UUID().uuidString,
                user: User(
                    username: "KanyeWest",
                    profilePictureUrl: nil,
                    identifier: UUID().uuidString
                )
            )
            posts.append(post)
        }
        
        return posts
    }
    
}
