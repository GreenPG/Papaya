//
//  LandingPageView.swift
//  Papaya
//
//  Created by Apprenant76 on 11/06/2026.
//

import SwiftUI
import Charts

struct ReturnData: Identifiable {
    let id = UUID()
    let goal: Double
    let yield: Double
}

struct Savings: Identifiable {
    let id = UUID()
    let month: String
    let saving: Double
}

let savingList: [Savings] = [
    Savings(month: "january", saving: 32.4),
    Savings(month: "february", saving: 12.4),
    Savings(month: "march", saving: 2.4),
    Savings(month: "april", saving: 33.4),
    Savings(month: "may", saving: 132.4),
    Savings(month: "june", saving: 02.4),
    Savings(month: "july", saving: 2.4),
    Savings(month: "august", saving: 37.4),
    Savings(month: "september", saving: 22.4),
    Savings(month: "october", saving: 12.4),
    Savings(month: "november", saving: 32.4),
    Savings(month: "december", saving: 2.4),
]

let linearGradient = LinearGradient(gradient: Gradient(colors: [.white.opacity(0.4), .white.opacity(0.0)]), startPoint:  .top, endPoint: .bottom)

func getMonths(from savings: [Savings]) -> [String] {
    var months: [String] = []
    for saving in savings {
        months.append(saving.month)
    }
    return months
}
struct LandingPageView: View {
    
    @State private var savings: [Savings] = Array(savingList[savingList.count-6..<savingList.count])
    
    var body: some View {
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
                        .font(.custom("Courgette", size: 25))
                    HStack {
                        Chart {
                            ForEach(savings) { saving in
                                LineMark(
                                    x: .value("Month", saving.month),
                                    y: .value("Savings", saving.saving)
                                )
                            }
                            .foregroundStyle(.white)
                            .interpolationMethod(.cardinal)
                            ForEach(savings) { saving in
                                AreaMark(
                                    x: .value("Month", saving.month),
                                    y: .value("Savings", saving.saving)
                                )
                            }
                            .interpolationMethod(.cardinal)
                            .foregroundStyle(linearGradient)
                        }
                        .scaledToFit()
                        .background(.greenPapaya)
                        .cornerRadius(10)
                        .padding(.horizontal,  10)
                    }
                }
                VStack {
                    Text("Actualités")
                        .font(.custom("Courgette", size: 25))
                }
                VStack {
                    Text("Jardin du mois")
                        .font(.custom("Courgette", size: 25))
                }

            }
        }
    }
}

#Preview {
    LandingPageView()
}
