//
//  GoalChartView.swift
//  Papaya
//
//  Created by Apprenant76 on 12/06/2026.
//

import SwiftUI
import Charts

struct GoalChartView: View {
    let data: GoalData
    
    var body: some View {
        Gauge(value: data.yield, in: 0...data.goal) {
        } currentValueLabel: {
            let goalAchievementPercentage = data.yield/data.goal
            Text(goalAchievementPercentage.formatted(.percent.precision(.fractionLength(0))))
                .foregroundStyle(.orangePapaya)
        }
        .gaugeStyle(.accessoryCircularCapacity)
        .tint(.orangePapaya)
    }
}

#Preview {
    GoalChartView(data: goalData)
}
