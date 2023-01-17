//
//  BorderExampleView.swift
//  SpacesQuestionAndAnswerExamples
//
//  Created by Russell Gordon on 2023-01-13.
//

import SwiftUI

struct BorderExampleView: View {
    var body: some View {
        VStack(spacing: 50) {
            
            Text("Hello Evelyn ☺️")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                // Background
                .background(
                    Color.red
                )
                // Border
                .overlay(
                    Rectangle()
                        .stroke(Color.blue, lineWidth: 10)
                )
            
            Text("Hello again!")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                // Background
                .background(
                    Color.green
                )
                // Clip view to rounded rectangle
                .clipShape(RoundedRectangle(cornerRadius: 25))
                // Border
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.orange, lineWidth: 10)
                )

                        
        }
        
    }
}

struct BorderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BorderExampleView()
    }
}
