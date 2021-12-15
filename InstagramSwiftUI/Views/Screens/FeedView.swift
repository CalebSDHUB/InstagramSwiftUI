//
//  FeedView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 15/12/2021.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            PostView()
            PostView()
            PostView()
        })
        .navigationBarTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView()
        }
    }
}
