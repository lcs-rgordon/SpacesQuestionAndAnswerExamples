//
//  ExamplesListView.swift
//  SpacesQuestionAndAnswerExamples
//
//  Created by Russell Gordon on 2023-01-16.
//

import SwiftUI

struct ExamplesListView: View {
    var body: some View {
        
        List {
            
            NavigationLink(destination: {
                CustomNavigationTitleView()
            }, label: {
                Text("Custom Navigation Title")
            })
            
        }
        .navigationTitle("Examples")
        
        
    }
}

struct ExamplesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExamplesListView()
        }
        // Set the color of the "back" < chevron 
        .tint(.red)
    }
}
