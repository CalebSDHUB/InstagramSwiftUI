//
//  SettingsLabelIView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 18/12/2021.
//

import SwiftUI

struct SettingsLabelIView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        VStack {
            HStack {
                Text(labelText)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: labelImage)
            }
            
            Divider()
                .padding(.vertical, 4)
        }
    }
}

struct SettingsLabelIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelIView(labelText: "Text label", labelImage: "heart")
            .previewLayout(.sizeThatFits)
    }
}
