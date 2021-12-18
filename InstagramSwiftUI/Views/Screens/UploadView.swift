//
//  UploadView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 18/12/2021.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    
                }, label: {
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.Theme.yellowColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.Theme.purpleColor)
                
                Button(action: {
                    
                }, label: {
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.Theme.purpleColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.Theme.yellowColor)
            }
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
