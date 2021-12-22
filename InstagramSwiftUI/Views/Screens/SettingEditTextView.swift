//
//  SettingEditTextView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 19/12/2021.
//

import SwiftUI

struct SettingEditTextView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var submissonText: String = ""
    @State var title: String
    @State var description: String
    @State var placeholder: String
    
    var body: some View {
        VStack {
            
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            TextField(placeholder, text: $submissonText)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(colorScheme == .light ? Color.Theme.biegeColor : Color.Theme.purpleColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            
            Button(action: {
                
            }, label: {
                Text("Save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(colorScheme == .light ? Color.Theme.purpleColor : Color.Theme.yellowColor)
                    .cornerRadius(12)
            })
            .accentColor(colorScheme == .light ? Color.Theme.yellowColor : Color.Theme.purpleColor)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationBarTitle(title)
    }
}

struct SettingEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingEditTextView(title: "Test title", description: "This is a description", placeholder: "Test Placeholder")
                .preferredColorScheme(.light)
        }
    }
}
