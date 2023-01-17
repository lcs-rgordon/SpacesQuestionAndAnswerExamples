//
//  ImageLayeringView.swift
//  SpacesQuestionAndAnswerExamples
//
//  Created by Russell Gordon on 2023-01-13.
//

import SwiftUI

struct ImageLayeringView: View {
    var body: some View {
        ZStack {
            
            // Layer #1
            LinearGradient(colors: [.yellow, .red],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // Layer #2
            VStack {
                
                // Spacer pushes image to bottom
                Spacer()
                
                HStack {
                    
                    // Spacer her pushes image to right
                    Spacer()
                    
                    Image("Beta")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        // Slightly reposition the image
                        .offset(x: 25, y: 25)
                }
                

                
            }
            .ignoresSafeArea()

            
            
        }
    }
}

struct ImageLayeringView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLayeringView()
    }
}
