//
//  LandingPageView.swift
//  Papaya
//
//  Created by Apprenant76 on 11/06/2026.
//

import SwiftUI
import Charts


    gradient: Gradient(colors: [.white.opacity(0.4), .white.opacity(0.0)]),
    startPoint:  .top,
    endPoint: .bottom
)

func getMonths(from savings: [Savings]) -> [String] {
    var months: [String] = []
    for saving in savings {
        months.append(saving.month)
    }
    return months
}

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
    
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                Text("Papaya")
                    .font(.custom("Courgette", size: 40))
                Image("papaya")
                    .resizable()
                    .frame(width: 200, height: 200)
                    HStack {
                        VStack {
                            Text(String(format: "%.2f €",sumOfSavings(from: savings)))
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
                            .chartXAxis {
                                AxisMarks(values: getMonths(from: savings)) {
                                    AxisValueLabel()
                                        .foregroundStyle(.white)
                                        .font(.caption)
                    VStack {
                        Text("Objectif")
                            .font(.custom("Courgette", size: 35))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        GoalChartView(data: goalData)
                            .scaleEffect(2.5)
                            
                    }
                    .padding(.vertical, 40)
                                }
                                
                            }
                            .chartYAxis {
                                AxisMarks(values: .automatic) {
                                    AxisValueLabel()
                                        .foregroundStyle(.white)
                                        .font(.caption)
                                }
                                
                            }
                            .scaledToFit()
                            .background(.greenPapaya)
                            .cornerRadius(10)
                            .padding(.horizontal,  10)
                        }
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
