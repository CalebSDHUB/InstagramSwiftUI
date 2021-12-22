//
//  PostImageView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 18/12/2021.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorSheme
    
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                })
                .accentColor(.primary)
                
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false, content: {
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                
                TextField("Add your caption here...", text: $captionText)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(colorSheme == .light ? Color.Theme.biegeColor : Color.Theme.purpleColor)
                    .cornerRadius(12)
                    .font(.headline)
                    .padding(.horizontal)
                    .autocapitalization(.sentences)
                
                Button(action: {
                    postPicture()
                }, label: {
                    Text("Post Picture!".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(colorSheme == .light ? Color.Theme.purpleColor : Color.Theme.yellowColor)
                        .cornerRadius(12)
                        .padding(.horizontal)
                })
                .accentColor(colorSheme == .light ? Color.Theme.yellowColor : Color.Theme.purpleColor)
            })
        }
    }
    
    // MARK: - FUNCTIONS
    
    func postPicture() {
        print("POST PICTURE TO DATABASE HERE")
    }
}

struct PostImageView_Previews: PreviewProvider {
    
    @State static var image = UIImage(named: "dog1")!
    
    static var previews: some View {
        PostImageView(imageSelected: $image)
            .preferredColorScheme(.light)
    }
}
