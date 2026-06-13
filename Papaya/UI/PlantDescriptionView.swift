//
//  PlantDescriptionView.swift
//  Papaya
//
//  Created by Apprenant76 on 04/06/2026.
//

import SwiftUI

struct PlantDescriptionView: View {
    var plant: PlantModel
    
    //TODO: Bind these variables to user lists
    @State private var isInList: Bool = false
    @State private var isInWishList: Bool = true
    
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                plant.picture
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: 300)
                    .cornerRadius(20)
                HStack {
                    Text(plant.name)
                        .font(.custom("Courgette", size: 40))
                    Button {
                        isInList.toggle()
                    } label: {
                        Image(systemName: isInList ? "minus" : "plus")
                            .font(.system(size: 40))
                            .foregroundStyle(.black)
                    }
                    Button {
                        isInWishList.toggle()
                    } label: {
                        Image(systemName: isInWishList ? "heart.fill" : "heart")
                            .font(.system(size: 40))
                            .foregroundStyle(.greenPapaya)
                    }
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 10) {
                    PlantDescriptionRowView(plant: plant, image: "sun.max", color: Color.yellow, text: plant.sunExposure)
                    PlantDescriptionRowView(plant: plant, image: "drop.halffull", color: Color.blue, text: plant.watering)
                    PlantDescriptionRowView(plant: plant, image: "chart.line.uptrend.xyaxis", color: Color.greenPapaya, text: plant.yield)
                }
                Text("Astuces")
                    .font(.custom("LouisGeorgeCafe", size: 30))
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(
                            plant.tips.enumerated(),
                            id: \.offset
                        ) { _, tip in
                            NavigationLink {
                                TutorialView(tutorial: tip)
                            } label : {
                                TutorialCardView(tutorial: tip)
                                    .padding(.trailing, 5)
                            }
                        }
                    }
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    PlantDescriptionView(plant: tomato)
}
