//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Clément Causer on 04/05/2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit

    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    // MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { itemIndex in
                    Divider()
                        .padding(.vertical, 2)

                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[itemIndex])
                        }
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.system(.body).bold())

                        Spacer(minLength: 25)

                        Text(fruit.nutrition[itemIndex])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
