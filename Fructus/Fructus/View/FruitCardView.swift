//
//  FruitCardView.swift
//  Fructus
//
//  Created by Clément Causer on 04/05/2022.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    
    
    var body: some View {
        VStack(spacing: 20) {
            // FRUIT: IMAGE
            Image("blueberry")
                .
            // FRUIT: TITLE
            Text("Blueberry")
            // FRUIT: HEADLINE
            // BUTTON: START
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
