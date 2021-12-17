//
//  PostArrayObject.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 16/12/2021.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    
    init() {
        print("FETCH FROM DATABASE HERE")
        let post1 = PostModel(postID: "", userID: "", username: "Joe Green", caption: "This is a caption", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postID: "", userID: "", username: "Jessica", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postID: "", userID: "", username: "Emily", caption: "This is a really long caption hahaha...", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postID: "", userID: "", username: "Christopher", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        dataArray.append(post1)
        dataArray.append(post2)
        dataArray.append(post3)
        dataArray.append(post4)
    }
}
