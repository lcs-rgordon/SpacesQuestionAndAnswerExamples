//
//  LayeringImagesView.swift
//  SpacesQuestionAndAnswerExamples
//
//  Created by Russell Gordon on 2023-01-13.
//

import SwiftUI

struct LayeringImagesView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            // Logo in top-right corner
            HStack {
                
                VStack {
                    Image("toronto-blue-jays-logo-transparent")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    
                    Spacer()
                }
                .overlay (
                    Rectangle()
                        .stroke(Color.red, lineWidth: 1)
                )
                
                Spacer()
                
            }
            .overlay (
                Rectangle()
                    .stroke(Color.blue, lineWidth: 1)
            )

        }
    }
}

struct LayeringImagesView_Previews: PreviewProvider {
    static var previews: some View {
        LayeringImagesView()
    }
}
