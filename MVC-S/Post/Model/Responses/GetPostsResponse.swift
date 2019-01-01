//
//  GetPostsResponse.swift
//  MVC-S
//
//  Created by Muhammad Faisal Imran Khan on 1/1/19.
//  Copyright © 2019 MI Apps. All rights reserved.
//

import Foundation

struct GetPostsResponse{
    
    let posts: [Post]
    init(json: Any) throws {
        guard let array = json as? [[String:Any]] else { throw NetworkingError.someError}
        var posts = [Post]()
        for item in array {
            let post = Post(dict: item)
            posts.append(post!)
        }
        self.posts = posts
    }
}
