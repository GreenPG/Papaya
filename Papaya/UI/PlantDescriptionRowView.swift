//
//  PlantDescriptionRowView.swift
//  Papaya
//
//  Created by Apprenant76 on 08/06/2026.
//

import SwiftUI

struct PlantDescriptionRowView: View {

    var plant: PlantModel
    var image: String
    var color: Color
    var text: String

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: image)
                .font(.system(size: 35))
                .foregroundStyle(color)
                .frame(minWidth: 50, alignment: .center)
            Text(text)
                .font(.custom("LouisGeorgeCafe", size: 20))
            Spacer()
        }
    }
}

#Preview {
    PlantDescriptionRowView(plant: tomato, image: "sun.max", color: Color.yellow, text: "3-6kg/saison")
}
