//
//  MessageView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 17/12/2021.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            
            // MARK: - PROFILE IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 4, content: {
                
                // MARK: - USER NAME
                
                Text("USERNAME")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                // MARK: - CONTENT
                
                Text("This is a new comment here.")
                    .padding(.all, 6)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            })
            Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "Joe Green", content: "This photo is really cool. Haha...", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
