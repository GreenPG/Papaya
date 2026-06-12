//
//  SavingsChartView.swift
//  Papaya
//
//  Created by Apprenant76 on 12/06/2026.
//

import SwiftUI
import Charts



let linearGradient = LinearGradient(
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

struct SavingsChartView: View {
    
    @State var savings: [Savings]
    var body : some View {
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
        .padding()
        .chartXAxis {
            AxisMarks(values: getMonths(from: savings)) {
                AxisValueLabel()
                    .foregroundStyle(.white)
                    .font(.title3)
            }

        }
        .chartYAxis {
            AxisMarks(position: .leading, values:  .automatic) {
                AxisValueLabel(format: .currency(code: "EUR"))
                    .foregroundStyle(.white)
                    .font(.title3)
            }
        }
        .frame(height: 240)
        .background(.greenPapaya)
        .cornerRadius(10)
        .padding(.horizontal,  10)
    }
}

#Preview {
    SavingsChartView(
        savings: Array(savingList[savingList.count-5..<savingList.count])
    )
}
