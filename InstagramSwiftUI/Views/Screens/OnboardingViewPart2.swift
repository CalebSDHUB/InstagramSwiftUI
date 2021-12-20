//
//  OnboardingViewPart2.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 20/12/2021.
//

import SwiftUI

struct OnboardingViewPart2: View {
    
    @State var displayName: String = ""
    @State var showImagePicker: Bool = false
    
    // For image picker
    @State var imageSelected: UIImage = UIImage(named: "logo")!
    @State var sourType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Text("What's your name")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.Theme.yellowColor)

            TextField("Add your name here...", text: $displayName)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.Theme.biegeColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
                .padding(.horizontal, 10)

            Button(action: {
                showImagePicker.toggle()
            }, label: {
                Text("Fininsh: Add profile picture")
                    .font(.headline)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.Theme.yellowColor)
                    .cornerRadius(12)
                    .padding(.horizontal)
            })
            .accentColor(Color.Theme.purpleColor)
            .opacity(displayName != "" ? 1.0 : 0.0)
            .animation(.easeInOut(duration: 1.0))
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.Theme.purpleColor)
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showImagePicker, onDismiss: createProfile, content: {
            ImagePicker(imageSelected: $imageSelected, sourceType: $sourType)
        })
        
        
        
    }
    
    // MARK: - FUNCTIONS
    
    func createProfile() {
        print("CREATE PROFILE NOW")
    }
}

struct OnboardingViewPart2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewPart2()
    }
}
 
