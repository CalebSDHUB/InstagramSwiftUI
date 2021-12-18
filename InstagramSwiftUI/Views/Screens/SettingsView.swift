//
//  SettingsView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 18/12/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                
                // MARK: - SECTION 1: DOGGRAM
                GroupBox(label: SettingsLabelIView(labelText: "DogGram", labelImage: "dot.radiowaves.left.and.right"), content: {
                    HStack(alignment: .center, spacing: 10, content: {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .cornerRadius(12)
                        
                        Text("DogGram is the #1 app for posting pictures of your dog and sharing them across the world. We are a dog-loving community and we're happy to have you!")
                            .font(.footnote)
                    })
                })
                .padding()
                
                // MARK: - SECTION 2: PROFILE
                GroupBox(label: SettingsLabelIView(labelText: "Profile", labelImage: "person.fill"), content: {
                    
                    SettingsRowView(leftIcon: "pencil", text: "Display Name", 
                                    color: Color.Theme.purpleColor)
                    SettingsRowView(leftIcon: "text.quote", text: "Bio",
                                    color: Color.Theme.purpleColor)
                    SettingsRowView(leftIcon: "photo", text: "Profile picture",
                                    color: Color.Theme.purpleColor)
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign out",
                                    color: Color.Theme.purpleColor)
                })
                .padding()
                
                // MARK: - SECTION 3: APPLICATION
                GroupBox(label: SettingsLabelIView(labelText: "Application", labelImage: "apps.iphone"), content: {
                    
                    SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.Theme.yellowColor)
                    SettingsRowView(leftIcon: "folder.fill", text: "Terms & Conditions", color: Color.Theme.yellowColor)
                    SettingsRowView(leftIcon: "globe", text: "DogGram's Website", color: Color.Theme.yellowColor)
                })
                .padding()
                
                // MARK: - SECTION 4: SIGN OFF
                GroupBox {
                    Text("DogGram was made with love. \n All Rights Reserved \n Cool Apps Inc. \n Cpoyright 2020♥️")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .padding(.bottom, 80)
            })
            .navigationBarTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "xmark")
                                            .font(.title)
                                    })
                                    .accentColor(.primary)
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
