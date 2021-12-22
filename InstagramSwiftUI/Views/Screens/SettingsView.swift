//
//  SettingsView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 18/12/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme
    
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
                    
                    NavigationLink(
                        destination: SettingEditTextView(submissonText: "Current display name", title: "Display Name", description: "You can edit your display name here. This will be seen by other users on your profile and your posts!", placeholder: "Your display name here..."),
                        label: {
                            SettingsRowView(leftIcon: "pencil", text: "Display Name",
                                            color: Color.Theme.purpleColor)
                        })
                    
                    NavigationLink(
                        destination: SettingEditTextView(submissonText: "Current bio here", title: "Profile Bio", description: "Your bio is a great place to let other users know a little about you. It will be shown on your profile only. ", placeholder: "Your bio here..."),
                        label: {
                            SettingsRowView(leftIcon: "text.quote", text: "Bio",
                                            color: Color.Theme.purpleColor)
                        })
                    NavigationLink(
                        destination: SettingsEditImageView(title: "Profile Picture", description: "Your profile picture will be shown on your profile and your posts. Most users make it an image of themselves or of their dog!", selectedImage: UIImage(named: "dog1")!),
                        label: {
                            SettingsRowView(leftIcon: "photo", text: "Profile picture",
                                            color: Color.Theme.purpleColor)
                        })
                    
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign out",
                                    color: Color.Theme.purpleColor)
                })
                .padding()
                
                // MARK: - SECTION 3: APPLICATION
                GroupBox(label: SettingsLabelIView(labelText: "Application", labelImage: "apps.iphone"), content: {
                    
                    Button(action: {
                        openCustonURL(urlString: "http://www.google.com")
                    }, label: {
                        SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.Theme.yellowColor)
                    })
                    
                    Button(action: {
                        openCustonURL(urlString: "http://www.yahoo.com")
                    }, label: {
                        SettingsRowView(leftIcon: "folder.fill", text: "Terms & Conditions", color: Color.Theme.yellowColor)
                    })
                    
                    Button(action: {
                        openCustonURL(urlString: "http://www.bing.com")
                    }, label: {
                        SettingsRowView(leftIcon: "globe", text: "DogGram's Website", color: Color.Theme.yellowColor)
                    })
                    
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
        .accentColor(colorScheme == .light ? Color.Theme.purpleColor : Color.Theme.yellowColor)
    }
    
    // MARK: - FUNCTIONS
    
    func openCustonURL(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
