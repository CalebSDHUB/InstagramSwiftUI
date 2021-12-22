//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 14/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var currentUserID: String? = "sdf"
    
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject(), title: "Feed")
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Feed")
            }
            NavigationView {
                BrowseView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Browse")
            }
            UploadView()
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            
            ZStack {
                if currentUserID != nil {
                    NavigationView {
                        ProfileView(profileDisplayName: "My profile", isMyProfile: true, profileUserId: "")
                    }
                } else {
                    SignUpView()
                }
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .accentColor(colorScheme == .light ? Color.Theme.purpleColor : Color.Theme.yellowColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
