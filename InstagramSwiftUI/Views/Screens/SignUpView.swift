//
//  SignUpView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 19/12/2021.
//

import SwiftUI

struct SignUpView: View {
    
    @State var showOnboarding: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            
            Spacer()
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
            
            Text("You're not signed in! 🙁")
                .font(.largeTitle)
                .fontWeight(.bold)
                // Scaling text down to one line
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
                .foregroundColor(Color.Theme.purpleColor)
            
            Text("Click the button below to create an account and join the fun!")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.Theme.purpleColor)
            
            Button(action: {
                showOnboarding.toggle()
            }, label: {
                Text("Sign in / Sign Up".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.Theme.purpleColor)
                    .cornerRadius(12)
                    .shadow(radius: 12)
            })
            .accentColor(Color.Theme.yellowColor)
            Spacer()
            Spacer()
        })
        .padding(.all, 40)
        .background(Color.Theme.yellowColor)
        .edgesIgnoringSafeArea(.all)
        .fullScreenCover(isPresented: $showOnboarding, content: {
            OnboardingView()
        })
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .preferredColorScheme(.dark)
    }
}
