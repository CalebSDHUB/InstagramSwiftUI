//
//  FeedView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 15/12/2021.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var title: String
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            LazyVStack { // It only load when shown
                ForEach(posts.dataArray, id: \.self) { post in
                    PostView(post: post, addheartAnimationToView: true, showHeaderAndFooter: true)
                }
            }
        })
        .navigationBarTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject(), title: "Feed Test")
        }
    }
}
