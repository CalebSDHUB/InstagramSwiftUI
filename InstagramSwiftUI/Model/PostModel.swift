//
//  PostModel.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 16/12/2021.
//
import Foundation

struct PostModel: Identifiable, Hashable {    
    
    var id = UUID()
    var postID = String() // ID for the post in the database
    var userID = String() // ID for the user in the database
    var username: String // Username of user in database
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    // postID
    // userID
    // user username
    // caption - optional
    // date
    // like count
    // liked by current user
}
