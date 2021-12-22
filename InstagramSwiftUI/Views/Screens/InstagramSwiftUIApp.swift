//
//  InstagramSwiftUIApp.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 14/12/2021.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
