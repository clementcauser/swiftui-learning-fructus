//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Clément Causer on 04/05/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                }
            } //: HSTACK
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
