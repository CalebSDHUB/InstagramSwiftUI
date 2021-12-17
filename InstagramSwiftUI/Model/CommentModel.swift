//
//  CommentModel.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 17/12/2021.
//

import Foundation

struct CommentModel: Identifiable, Hashable {
    var id = UUID()
    var commentID: String // ID for the comment in the database
    var userID: String // ID for the user in the database
    var username: String // Username for the user in the database
    var content: String // Actually comment text
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
