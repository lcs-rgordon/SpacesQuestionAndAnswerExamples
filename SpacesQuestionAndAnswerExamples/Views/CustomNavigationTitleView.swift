//
//  CustomNavigationTitleView.swift
//  SpacesQuestionAndAnswerExamples
//
//  Created by Russell Gordon on 2023-01-16.
//

import SwiftUI

// SOURCE: https://sarunw.com/posts/custom-navigation-bar-title-view-in-swiftui/
struct CustomNavigationTitleView: View {
    
    var body: some View {
     
        LinearGradient(colors: [.black, .white],
                       startPoint: .top,
                       endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
            // Custom navigation title
            .toolbar {
                
                // Key that placement argument is ".principal:
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("My Navigation Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            // Set the title color
                            .foregroundColor(.red)
                        Spacer()
                    }
                }

            }
    }
}

struct CustomNavigationTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomNavigationTitleView()
        }
    }
}
