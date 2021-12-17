//
//  CarouselView.swift
//  InstagramSwiftUI
//
//  Created by Caleb Danielsen on 17/12/2021.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection: Int = 1
    @State var timerAdded: Bool = false
    
    let maxCount: Int = 8
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    ForEach(1..<8) { count in
                        Image("dog\(count)")
                            .resizable()
                            .scaledToFill()
                            .tag(count)
                    }
                })
            .tabViewStyle(PageTabViewStyle())
            .frame(height: 300)
            .onAppear(perform: {
                if !timerAdded {
                    addTimer()
                }
            })
    }
    
    // MARK: - FUNCTIONS
    
    func addTimer() {
        
        timerAdded = true
        
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            
            if selection == (maxCount - 1) {
                selection = 0
            }
            
            selection += 1
        }
        timer.fire()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CarouselView()
                .previewLayout(.sizeThatFits)
        }
    }
}
