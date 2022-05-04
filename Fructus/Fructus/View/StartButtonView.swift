//
//  StartButtonView.swift
//  Fructus
//
//  Created by Clément Causer on 04/05/2022.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }) {

            HStack(spacing: 8) {
                Text("Start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
            .accentColor(.white)
    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .background(.black)
    }
}
