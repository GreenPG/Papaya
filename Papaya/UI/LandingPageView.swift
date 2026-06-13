//
//  LandingPageView.swift
//  Papaya
//
//  Created by Apprenant76 on 11/06/2026.
//

import SwiftUI



func sumOfSavings(from savings: [Savings]) -> Double {
    var sum: Double = 0.0
    
    for monthlySaving in savings {
        sum += monthlySaving.saving
    }
    return sum
}

struct LandingPageView: View {
    
    @State private var savings: [Savings] = Array(
        savingList[savingList.count-6..<savingList.count]
    )
    let actualities: [Tutorial] = tutorials
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                ScrollView {
                    Text("Papaya")
                        .font(.custom("Courgette", size: 40))
                    Image("papaya")
                        .resizable()
                        .frame(width: 200, height: 200)
                    VStack {
                        Text("Objectif")
                            .font(.custom("Courgette", size: 35))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        GoalChartView(data: goalData)
                            .scaleEffect(2.5)
                            
                    }
                    .padding(.vertical, 40)
                    VStack {
                        Text("Economies")
                            .font(.custom("Courgette", size: 35))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(
                            String(
                                format: "Ce mois-ci: %.2f €",
                                sumOfSavings(from: savings)
                            )
                        )
                        .foregroundStyle(.greenPapaya)
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Text(
                            String(
                                format: "Total: %.2f €",
                                sumOfSavings(from: savings)
                            )
                        )
                        .foregroundStyle(.greenPapaya)
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        SavingsChartView(savings: savingList)
                    }
                    .padding(.vertical, 40)
                    VStack(alignment: .leading) {
                        Text("Actualités")
                            .font(.custom("Courgette", size: 35))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(
                                    actualities.enumerated(),
                                    id: \.offset
                                ) { _, actuality in
                                    NavigationLink {
                                        TutorialView(tutorial: actuality)
                                    } label : {
                                        TutorialCardView(tutorial: actuality)
                                            .padding(.trailing, 5)
                                    }
                                }
                            }
                        }
                        .scrollEdgeEffectStyle(.hard, for:.all)
                        .ignoresSafeArea(.all)
                    }
                    .padding(.vertical, 20)
                    VStack(alignment: .leading) {
                        Text("Jardin du mois")
                            .font(.custom("Courgette", size: 35))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(gardens) {garden in
                                    MonthlyGardenCardView(garden: garden)
                                }
                            }
                        }
                    }
                    .padding(.vertical, 20)
                }
                .padding()
            }
        }
    }
}

#Preview {
    LandingPageView()
}
